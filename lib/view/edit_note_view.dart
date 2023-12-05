import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/cearch_icon_appbar.dart';
import 'package:flutter_application_1/widget/edit_view_body.dart';

class EditNoteView extends StatelessWidget {
  static const String routeName = 'Edit Notes View';

  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          customIconAppBar(icon: Icons.check),
        ],
        title: const Text(
          'Edit Note',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
      body: const EditNoteViewBody(),
    );
  }
}
