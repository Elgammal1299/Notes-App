import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: ((context, index) {
        return const NoteItem();
      }),
    );
  }
}