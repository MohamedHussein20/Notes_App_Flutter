import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<Note>? notes = [];
  fetchAllNotes() {
    var notesBox = Hive.box<Note>("notes_box");
    notes = notesBox.values.toList();
    emit(NotesSuccess());
  }
}
