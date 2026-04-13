import 'package:kumi_note/core/domain/entities/note.dart';

abstract class NoteRepository {
  Future<List<Note>> getAll();
  Future<Note?> getById(int id);
  Future<Note> create(Note note);
  Future<Note> update(Note note);
  Future<void> delete(int id);
  Future<List<Note>> search(String query);
}
