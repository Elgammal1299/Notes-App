import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/cubits/add_note/add_note_cubit.dart';
import 'package:flutter_application_1/model/note_model.dart';
import 'package:flutter_application_1/simple_bloc_observer.dart';
import 'package:flutter_application_1/view/edit_note_view.dart';
import 'package:flutter_application_1/view/notes_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
        ),
        initialRoute: NotesView.routeName,
        routes: {
          NotesView.routeName: (context) => const NotesView(),
          EditNoteView.routeName: (context) => const EditNoteView(),
        },
      ),
    );
  }
}
