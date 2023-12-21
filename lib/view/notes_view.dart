import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:flutter_application_1/widget/add_note_botton_sheet.dart';
import 'package:flutter_application_1/widget/cearch_icon_appbar.dart';
import 'package:flutter_application_1/widget/notes_view_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesView extends StatelessWidget {
  static const String routeName = 'Notes View';
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Notes',
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          actions: const [
            CustomIconAppBar(icon: Icons.search),
          ],
        ),
        body: const NotesViewBody(),
        floatingActionButton: floatingActionButton(context),
      ),
    );
  }

  FloatingActionButton floatingActionButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return const AppNoteBottonSheet();
            });
      },
      child: const Icon(Icons.add),
    );
  }
}
