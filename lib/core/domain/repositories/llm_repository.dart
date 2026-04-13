import 'package:kumi_note/core/domain/entities/llm_model.dart';

typedef ProgressCallback = void Function(double progress);

class LLMResponse {
  const LLMResponse({required this.text, required this.sourceNoteIds});

  final String text;
  final List<int> sourceNoteIds;
}

abstract class LLMRepository {
  Future<LLMStatus> getStatus();
  Future<void> download(ProgressCallback onProgress);
  Future<void> activate();
  Future<LLMResponse> getResponse(String prompt);
}
