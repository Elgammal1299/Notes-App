import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/custom_text_from_field.dart';

class AppNoteBottonSheet extends StatelessWidget {
  const AppNoteBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          CustomTextFormField(),
          SizedBox(
            height: 20,
          ),
          CustomTextFormField(),
        ],
      ),
    );
  }
}
