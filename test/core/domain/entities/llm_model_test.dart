import 'package:flutter_test/flutter_test.dart';
import 'package:kumi_note/core/domain/entities/llm_model.dart';

void main() {
  group('LLMStatus', () {
    test('should have correct enum values', () {
      expect(LLMStatus.values.length, 4);
      expect(LLMStatus.values, contains(LLMStatus.notDownloaded));
      expect(LLMStatus.values, contains(LLMStatus.downloading));
      expect(LLMStatus.values, contains(LLMStatus.ready));
      expect(LLMStatus.values, contains(LLMStatus.error));
    });
  });

  group('LLMModel', () {
    test('should create LLMModel correctly', () {
      final model = LLMModel(
        id: 'model-1',
        name: 'Test Model',
        size: 1000000,
        status: LLMStatus.ready,
        downloadedAt: DateTime(2024),
      );

      expect(model.id, 'model-1');
      expect(model.name, 'Test Model');
      expect(model.size, 1000000);
      expect(model.status, LLMStatus.ready);
      expect(model.downloadedAt, DateTime(2024));
    });

    test('should create LLMModel without optional fields', () {
      const model = LLMModel(
        id: 'model-1',
        name: 'Test Model',
        size: 1000000,
        status: LLMStatus.notDownloaded,
      );

      expect(model.id, 'model-1');
      expect(model.name, 'Test Model');
      expect(model.size, 1000000);
      expect(model.status, LLMStatus.notDownloaded);
      expect(model.downloadedAt, isNull);
    });

    test('should copyWith works correctly', () {
      const model = LLMModel(
        id: 'model-1',
        name: 'Test Model',
        size: 1000000,
        status: LLMStatus.downloading,
      );

      final updatedModel = model.copyWith(
        status: LLMStatus.ready,
        downloadedAt: DateTime(2024),
      );

      expect(updatedModel.id, 'model-1');
      expect(updatedModel.name, 'Test Model');
      expect(updatedModel.size, 1000000);
      expect(updatedModel.status, LLMStatus.ready);
      expect(updatedModel.downloadedAt, DateTime(2024));
    });

    test('should have correct equality', () {
      const model1 = LLMModel(
        id: 'model-1',
        name: 'Test',
        size: 1000000,
        status: LLMStatus.ready,
      );

      const model2 = LLMModel(
        id: 'model-1',
        name: 'Test',
        size: 1000000,
        status: LLMStatus.ready,
      );

      const model3 = LLMModel(
        id: 'model-2',
        name: 'Test',
        size: 1000000,
        status: LLMStatus.ready,
      );

      expect(model1, model2);
      expect(model1, isNot(model3));
    });

    test('should serialize to JSON correctly', () {
      final model = LLMModel(
        id: 'model-1',
        name: 'Test Model',
        size: 1000000,
        status: LLMStatus.ready,
        downloadedAt: DateTime(2024),
      );

      final json = model.toJson();

      expect(json['id'], 'model-1');
      expect(json['name'], 'Test Model');
      expect(json['size'], 1000000);
      expect(json['status'], 'ready');
      expect(json['downloadedAt'], '2024-01-01T00:00:00.000');
    });

    test('should serialize to JSON without downloadedAt', () {
      const model = LLMModel(
        id: 'model-1',
        name: 'Test Model',
        size: 1000000,
        status: LLMStatus.notDownloaded,
      );

      final json = model.toJson();

      expect(json['id'], 'model-1');
      expect(json['name'], 'Test Model');
      expect(json['size'], 1000000);
      expect(json['status'], 'notDownloaded');
      expect(json['downloadedAt'], isNull);
    });

    test('should deserialize from JSON correctly', () {
      const json = {
        'id': 'model-1',
        'name': 'Test Model',
        'size': 1000000,
        'status': 'ready',
        'downloadedAt': '2024-01-01T00:00:00.000',
      };

      final model = LLMModel.fromJson(json);

      expect(model.id, 'model-1');
      expect(model.name, 'Test Model');
      expect(model.size, 1000000);
      expect(model.status, LLMStatus.ready);
      expect(model.downloadedAt, DateTime(2024));
    });

    test('should deserialize all status values correctly', () {
      for (final status in LLMStatus.values) {
        final json = {
          'id': 'model-1',
          'name': 'Test',
          'size': 1000,
          'status': status.name,
        };

        final model = LLMModel.fromJson(json);
        expect(model.status, status);
      }
    });
  });
}
