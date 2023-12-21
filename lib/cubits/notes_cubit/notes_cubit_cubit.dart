import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/model/note_model.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());
  fetchAddNotes() async {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      //كده انا حطيت البوكس بتاعي فى متغير عن طريق المتغير ده اقدر اعمل اى حاجة فى البوكس اخزن فيه او امسح منه وهكذا
      List<NoteModel> notes = notesBox.values.toList();
      //السطر اللى فوق ده بيجبلى اى حاجة متخزنة عندي فى البوكس وانا ممكن احولها ليست واخزنها
      // isLoading = false;
      emit(NotesCubitSuccess(notes));
    } catch (e) {
      // isLoading = false;

      emit(NotesCubitFailuer(e.toString()));
    }
  }
}
