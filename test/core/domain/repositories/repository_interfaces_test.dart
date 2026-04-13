import 'package:flutter_test/flutter_test.dart';
import 'package:kumi_note/core/domain/entities/embedding.dart';
import 'package:kumi_note/core/domain/entities/llm_model.dart';
import 'package:kumi_note/core/domain/entities/note.dart';
import 'package:kumi_note/core/domain/repositories/embedding_repository.dart';
import 'package:kumi_note/core/domain/repositories/llm_repository.dart';
import 'package:kumi_note/core/domain/repositories/note_repository.dart';

// Mock implementations to verify interfaces can be implemented
class MockNoteRepository implements NoteRepository {
  final List<Note> _notes = [];

  @override
  Future<Note> create(Note note) async {
    _notes.add(note);
    return note;
  }

  @override
  Future<void> delete(int id) async {
    _notes.removeWhere((n) => n.id == id);
  }

  @override
  Future<List<Note>> getAll() async => _notes;

  @override
  Future<Note?> getById(int id) async =>
      _notes.cast<Note?>().firstWhere((n) => n?.id == id, orElse: () => null);

  @override
  Future<List<Note>> search(String query) async => _notes
      .where(
        (n) => (n.title?.contains(query) ?? false) || n.content.contains(query),
      )
      .toList();

  @override
  Future<Note> update(Note note) async {
    final index = _notes.indexWhere((n) => n.id == note.id);
    if (index >= 0) {
      _notes[index] = note;
    }
    return note;
  }
}

class MockEmbeddingRepository implements EmbeddingRepository {
  final Map<int, Embedding> _embeddings = {};

  @override
  Future<Embedding> create(Embedding embedding) async {
    _embeddings[embedding.noteId] = embedding;
    return embedding;
  }

  @override
  Future<void> delete(int noteId) async {
    _embeddings.remove(noteId);
  }

  @override
  Future<Embedding?> getByNoteId(int noteId) async => _embeddings[noteId];

  @override
  Future<List<Note>> searchSimilar(List<double> queryVector, int limit) async =>
      [];

  @override
  Future<Embedding> update(Embedding embedding) async {
    _embeddings[embedding.noteId] = embedding;
    return embedding;
  }
}

class MockLLMRepository implements LLMRepository {
  LLMStatus _status = LLMStatus.notDownloaded;

  @override
  Future<void> activate() async => _status = LLMStatus.ready;

  @override
  Future<void> download(void Function(double) onProgress) async {
    _status = LLMStatus.downloading;
    onProgress(0.5);
    _status = LLMStatus.ready;
  }

  @override
  Future<LLMResponse> getResponse(String prompt) async => LLMResponse(
    text: 'Mock response to: $prompt',
    sourceNoteIds: const [1, 2],
  );

  @override
  Future<LLMStatus> getStatus() async => _status;
}

void main() {
  group('NoteRepository', () {
    late MockNoteRepository repository;

    setUp(() {
      repository = MockNoteRepository();
    });

    test('should be able to implement NoteRepository', () {
      expect(repository, isA<NoteRepository>());
    });

    test('should implement all methods', () async {
      // Test create
      final note = Note(id: 1, content: 'Test', createdAt: DateTime.now());
      final created = await repository.create(note);
      expect(created, note);

      // Test getAll
      final all = await repository.getAll();
      expect(all.length, 1);

      // Test getById
      final found = await repository.getById(1);
      expect(found?.id, 1);

      final notFound = await repository.getById(999);
      expect(notFound, isNull);

      // Test update
      final updated = await repository.update(
        note.copyWith(content: 'Updated'),
      );
      expect(updated.content, 'Updated');

      // Test search
      final search = await repository.search('Updated');
      expect(search.isNotEmpty, true);

      // Test delete
      await repository.delete(1);
      final afterDelete = await repository.getAll();
      expect(afterDelete.isEmpty, true);
    });
  });

  group('EmbeddingRepository', () {
    late MockEmbeddingRepository repository;

    setUp(() {
      repository = MockEmbeddingRepository();
    });

    test('should be able to implement EmbeddingRepository', () {
      expect(repository, isA<EmbeddingRepository>());
    });

    test('should implement all methods', () async {
      // Test create
      final embedding = Embedding(
        id: 1,
        noteId: 100,
        vector: const [0.1, 0.2],
        createdAt: DateTime.now(),
      );
      final created = await repository.create(embedding);
      expect(created, embedding);

      // Test getByNoteId
      final found = await repository.getByNoteId(100);
      expect(found?.noteId, 100);

      final notFound = await repository.getByNoteId(999);
      expect(notFound, isNull);

      // Test update
      final updated = await repository.update(
        embedding.copyWith(vector: const [0.3, 0.4]),
      );
      expect(updated.vector, const [0.3, 0.4]);

      // Test searchSimilar
      final similar = await repository.searchSimilar(const [0.1], 5);
      expect(similar, isA<List<Note>>());

      // Test delete
      await repository.delete(100);
      final afterDelete = await repository.getByNoteId(100);
      expect(afterDelete, isNull);
    });
  });

  group('LLMRepository', () {
    late MockLLMRepository repository;

    setUp(() {
      repository = MockLLMRepository();
    });

    test('should be able to implement LLMRepository', () {
      expect(repository, isA<LLMRepository>());
    });

    test('should implement all methods', () async {
      // Test getStatus
      var status = await repository.getStatus();
      expect(status, LLMStatus.notDownloaded);

      // Test download with progress callback
      var progressReceived = 0.0;
      await repository.download((progress) => progressReceived = progress);
      expect(progressReceived, 0.5);

      status = await repository.getStatus();
      expect(status, LLMStatus.ready);

      // Test activate
      await repository.activate();
      status = await repository.getStatus();
      expect(status, LLMStatus.ready);

      // Test getResponse
      final response = await repository.getResponse('Hello');
      expect(response.text, 'Mock response to: Hello');
      expect(response.sourceNoteIds, const [1, 2]);
    });
  });

  group('LLMResponse', () {
    test('should create LLMResponse correctly', () {
      const response = LLMResponse(
        text: 'Test response',
        sourceNoteIds: [1, 2, 3],
      );

      expect(response.text, 'Test response');
      expect(response.sourceNoteIds, const [1, 2, 3]);
    });

    test('should be equatable', () {
      const response1 = LLMResponse(text: 'Test', sourceNoteIds: [1]);
      const response2 = LLMResponse(text: 'Test', sourceNoteIds: [1]);
      const response3 = LLMResponse(text: 'Different', sourceNoteIds: [1]);

      expect(response1, response2);
      expect(response1, isNot(response3));
    });
  });
}
