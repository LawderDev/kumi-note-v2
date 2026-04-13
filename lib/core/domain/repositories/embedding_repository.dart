import 'package:kumi_note/core/domain/entities/embedding.dart';
import 'package:kumi_note/core/domain/entities/note.dart';

abstract class EmbeddingRepository {
  Future<Embedding?> getByNoteId(int noteId);
  Future<Embedding> create(Embedding embedding);
  Future<Embedding> update(Embedding embedding);
  Future<void> delete(int noteId);
  Future<List<Note>> searchSimilar(List<double> queryVector, int limit);
}
