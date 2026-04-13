import 'package:flutter_test/flutter_test.dart';
import 'package:kumi_note/core/domain/entities/embedding.dart';

void main() {
  group('Embedding', () {
    test('should create Embedding correctly', () {
      final embedding = Embedding(
        id: 1,
        noteId: 100,
        vector: const [0.1, 0.2, 0.3, 0.4],
        createdAt: DateTime(2024),
      );

      expect(embedding.id, 1);
      expect(embedding.noteId, 100);
      expect(embedding.vector, const [0.1, 0.2, 0.3, 0.4]);
      expect(embedding.createdAt, DateTime(2024));
    });

    test('should copyWith works correctly', () {
      final embedding = Embedding(
        id: 1,
        noteId: 100,
        vector: const [0.1, 0.2],
        createdAt: DateTime(2024),
      );

      final updatedEmbedding = embedding.copyWith(vector: const [0.3, 0.4]);

      expect(updatedEmbedding.id, 1);
      expect(updatedEmbedding.noteId, 100);
      expect(updatedEmbedding.vector, const [0.3, 0.4]);
      expect(updatedEmbedding.createdAt, DateTime(2024));
    });

    test('should have correct equality', () {
      final embedding1 = Embedding(
        id: 1,
        noteId: 100,
        vector: const [0.1, 0.2],
        createdAt: DateTime(2024),
      );

      final embedding2 = Embedding(
        id: 1,
        noteId: 100,
        vector: const [0.1, 0.2],
        createdAt: DateTime(2024),
      );

      final embedding3 = Embedding(
        id: 2,
        noteId: 100,
        vector: const [0.1, 0.2],
        createdAt: DateTime(2024),
      );

      expect(embedding1, embedding2);
      expect(embedding1, isNot(embedding3));
    });

    test('should serialize to JSON correctly', () {
      final embedding = Embedding(
        id: 1,
        noteId: 100,
        vector: const [0.1, 0.2],
        createdAt: DateTime(2024),
      );

      final json = embedding.toJson();

      expect(json['id'], 1);
      expect(json['noteId'], 100);
      expect(json['vector'], const [0.1, 0.2]);
      expect(json['createdAt'], '2024-01-01T00:00:00.000');
    });

    test('should deserialize from JSON correctly', () {
      const json = {
        'id': 1,
        'noteId': 100,
        'vector': [0.1, 0.2, 0.3],
        'createdAt': '2024-01-01T00:00:00.000',
      };

      final embedding = Embedding.fromJson(json);

      expect(embedding.id, 1);
      expect(embedding.noteId, 100);
      expect(embedding.vector, const [0.1, 0.2, 0.3]);
      expect(embedding.createdAt, DateTime(2024));
    });
  });
}
