import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/notes_view_body.dart';

class NotesView extends StatelessWidget {
  static const String routeName = 'Notes View';
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 12),
          child: const NotesViewBody()),
    );
  }
}
