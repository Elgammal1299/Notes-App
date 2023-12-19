import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/custom_botton.dart';
import 'package:flutter_application_1/widget/custom_text_from_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title;
  String? supTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextFormField(
              onSaved: (value) {
                title = value;
              },
              labelText: 'Titel'),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
              onSaved: (value) {
                supTitle = value;
              },
              labelText: "Content",
              maxLine: 5),
          const SizedBox(
            height: 25,
          ),
          CustomBottom(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
