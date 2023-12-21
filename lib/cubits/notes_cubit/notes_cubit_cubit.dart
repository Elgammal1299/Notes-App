import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/model/note_model.dart';
import 'package:meta/meta.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());
}
