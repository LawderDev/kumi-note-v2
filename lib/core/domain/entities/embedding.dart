import 'package:freezed_annotation/freezed_annotation.dart';

part 'embedding.freezed.dart';
part 'embedding.g.dart';

@freezed
class Embedding with _$Embedding {
  const factory Embedding({
    required int id,
    required int noteId,
    required List<double> vector,
    required DateTime createdAt,
  }) = _Embedding;

  factory Embedding.fromJson(Map<String, dynamic> json) =>
      _$EmbeddingFromJson(json);
}
