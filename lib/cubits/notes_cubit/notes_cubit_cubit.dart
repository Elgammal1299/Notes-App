import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/model/note_model.dart';
import 'package:hive/hive.dart';
part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    //كده انا حطيت البوكس بتاعي فى متغير عن طريق المتغير ده اقدر اعمل اى حاجة فى البوكس اخزن فيه او امسح منه وهكذا
    notes = notesBox.values.toList();
    //السطر اللى فوق ده بيجبلى اى حاجة متخزنة عندي فى البوكس وانا ممكن احولها ليست واخزنها
    // isLoading = false;
    emit(NotesSuccess());
  }
}
/*
هو انا ايه كنت مستخدم try , catch هو اي نعم احنا متعودين نستخدمها على طول فى اى ميثود بعملها فى الكيبود از مثلا api 
بس انا هنا مش محتاجها خالص ده كود مش هيطلع ايرور خالص ولا هيجيب بيانات من على النت ولا اى حاجة من الكلام ده 
م نالاحسن لو انا مش محتاج التراي والكاتش مستخدمهاش لانه مكلفة جدا 
يعني مستخدمهاش غير لو انا فعلا محتاجها
try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      كده انا حطيت البوكس بتاعي فى متغير عن طريق المتغير ده اقدر اعمل اى حاجة فى البوكس اخزن فيه او امسح منه وهكذا
      List<NoteModel> notes = notesBox.values.toList();
     السطر اللى فوق ده بيجبلى اى حاجة متخزنة عندي فى البوكس وانا ممكن احولها ليست واخزنها
      isLoading = false;
      emit(NotesCubitSuccess(notes));
    } catch (e) {
     isLoading = false;

      emit(NotesCubitFailuer(e.toString()));
    }
 */