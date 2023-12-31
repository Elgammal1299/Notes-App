import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubits/add_note/add_note_cubit.dart';
import 'package:flutter_application_1/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:flutter_application_1/widget/add_note_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppNoteBottonSheet extends StatelessWidget {
  const AppNoteBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSuccess) {
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          }
          if (state is AddNoteFailuer) {}
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const SingleChildScrollView(child: AddNoteForm()),
            ),
          );
        },
      ),
    );
  }
}
/*
BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
          if (state is AddNoteFailuer) {
            debugPrint('Success');
          }
        },
        builder: (context, state) {
      انا هنا يعتبر مش عاوز اعمل ريبلد هنا 
      انا كنت بعمل هنا علشان اريبلد البوطن شيت بس دلوقتي يعتبر مش عاوزه
          return const Padding(
            padding: EdgeInsets.all(8.0),
            child: SingleChildScrollView(child: AddNoteForm()),
          );
        },
      ),
    );
 */