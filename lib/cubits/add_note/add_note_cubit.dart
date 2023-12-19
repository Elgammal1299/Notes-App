import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/model/note_model.dart';
import 'package:hive/hive.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  // bool isLoading = true;
  addNote(NoteModel note) async {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      //كده انا حطيت البوكس بتاعي فى متغير عن طريق المتغير ده اقدر اعمل اى حاجة فى البوكس اخزن فيه او امسح منه وهكذا
      await notesBox.add(note);
      // isLoading = false;
      emit(AddNoteSuccess());
    } catch (e) {
      // isLoading = false;

      emit(AddNoteFailuer(e.toString()));
    }
  }
}
