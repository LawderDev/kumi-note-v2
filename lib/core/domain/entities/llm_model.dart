import 'package:freezed_annotation/freezed_annotation.dart';

part 'llm_model.freezed.dart';
part 'llm_model.g.dart';

enum LLMStatus { notDownloaded, downloading, ready, error }

@freezed
class LLMModel with _$LLMModel {
  const factory LLMModel({
    required String id,
    required String name,
    required int size,
    required LLMStatus status,
    DateTime? downloadedAt,
  }) = _LLMModel;

  factory LLMModel.fromJson(Map<String, dynamic> json) =>
      _$LLMModelFromJson(json);
}
