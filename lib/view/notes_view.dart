import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/add_note_botton_sheet.dart';
import 'package:flutter_application_1/widget/cearch_icon_appbar.dart';
import 'package:flutter_application_1/widget/notes_view_body.dart';

class NotesView extends StatelessWidget {
  static const String routeName = 'Notes View';
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notes',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        actions: const [
          CearchIconAppBar(),
        ],
      ),
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) {
                return const AppNoteBottonSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
