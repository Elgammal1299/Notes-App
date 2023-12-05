import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/custom_text_from_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomTextFormField(labelText: 'Titel'),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(labelText: 'Content', maxLine: 5),
        ],
      ),
    );
  }
}
