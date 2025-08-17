import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  bool isLoading = false;
  addNote(Note note) async {
    isLoading = true;
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box("notes_box");
      isLoading = false;
      emit(AddNoteSuccess());

      await notesBox.add(note);
    } catch (e) {
      isLoading = false;
      emit(AddNoteFailure(e.toString()));
    }
  }
}
