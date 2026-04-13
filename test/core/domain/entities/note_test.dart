import 'package:flutter_test/flutter_test.dart';
import 'package:kumi_note/core/domain/entities/note.dart';

void main() {
  group('Note', () {
    test('should create Note correctly', () {
      final note = Note(
        id: 1,
        title: 'Test Title',
        content: 'Test Content',
        createdAt: DateTime(2024),
        updatedAt: DateTime(2024, 1, 2),
        embedding: const [0.1, 0.2, 0.3],
      );

      expect(note.id, 1);
      expect(note.title, 'Test Title');
      expect(note.content, 'Test Content');
      expect(note.createdAt, DateTime(2024));
      expect(note.updatedAt, DateTime(2024, 1, 2));
      expect(note.embedding, const [0.1, 0.2, 0.3]);
    });

    test('should create Note with optional fields null', () {
      final note = Note(
        id: 1,
        content: 'Test Content',
        createdAt: DateTime(2024),
      );

      expect(note.id, 1);
      expect(note.title, isNull);
      expect(note.content, 'Test Content');
      expect(note.createdAt, DateTime(2024));
      expect(note.updatedAt, isNull);
      expect(note.embedding, isNull);
    });

    test('should copyWith works correctly', () {
      final note = Note(
        id: 1,
        content: 'Original Content',
        createdAt: DateTime(2024),
      );

      final updatedNote = note.copyWith(
        title: 'New Title',
        content: 'Updated Content',
        updatedAt: DateTime(2024, 1, 15),
      );

      expect(updatedNote.id, 1);
      expect(updatedNote.title, 'New Title');
      expect(updatedNote.content, 'Updated Content');
      expect(updatedNote.createdAt, DateTime(2024));
      expect(updatedNote.updatedAt, DateTime(2024, 1, 15));
      expect(updatedNote.embedding, isNull);
    });

    test('should have correct equality', () {
      final note1 = Note(
        id: 1,
        title: 'Test',
        content: 'Content',
        createdAt: DateTime(2024),
      );

      final note2 = Note(
        id: 1,
        title: 'Test',
        content: 'Content',
        createdAt: DateTime(2024),
      );

      final note3 = Note(
        id: 2,
        title: 'Test',
        content: 'Content',
        createdAt: DateTime(2024),
      );

      expect(note1, note2);
      expect(note1, isNot(note3));
    });

    test('should serialize to JSON correctly', () {
      final note = Note(
        id: 1,
        title: 'Test',
        content: 'Content',
        createdAt: DateTime(2024),
        updatedAt: DateTime(2024, 1, 2),
        embedding: const [0.1, 0.2],
      );

      final json = note.toJson();

      expect(json['id'], 1);
      expect(json['title'], 'Test');
      expect(json['content'], 'Content');
      expect(json['createdAt'], '2024-01-01T00:00:00.000');
      expect(json['updatedAt'], '2024-01-02T00:00:00.000');
      expect(json['embedding'], const [0.1, 0.2]);
    });

    test('should deserialize from JSON correctly', () {
      const json = {
        'id': 1,
        'title': 'Test',
        'content': 'Content',
        'createdAt': '2024-01-01T00:00:00.000',
        'updatedAt': '2024-01-02T00:00:00.000',
        'embedding': [0.1, 0.2],
      };

      final note = Note.fromJson(json);

      expect(note.id, 1);
      expect(note.title, 'Test');
      expect(note.content, 'Content');
      expect(note.createdAt, DateTime(2024));
      expect(note.updatedAt, DateTime(2024, 1, 2));
      expect(note.embedding, const [0.1, 0.2]);
    });

    test('should deserialize from JSON without optional fields', () {
      const json = {
        'id': 1,
        'content': 'Content',
        'createdAt': '2024-01-01T00:00:00.000',
      };

      final note = Note.fromJson(json);

      expect(note.id, 1);
      expect(note.title, isNull);
      expect(note.content, 'Content');
      expect(note.createdAt, DateTime(2024));
      expect(note.updatedAt, isNull);
      expect(note.embedding, isNull);
    });
  });
}
