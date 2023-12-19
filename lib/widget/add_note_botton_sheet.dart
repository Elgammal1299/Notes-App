import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubits/add_note/add_note_cubit.dart';
import 'package:flutter_application_1/widget/addd_note_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AppNoteBottonSheet extends StatelessWidget {
  const AppNoteBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        // height: MediaQuery.of(context).size.height * .7,
        padding: const EdgeInsets.all(8.0),
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
            return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading ? true : false,
              child: const AddNoteForm(),
            );
          },
        ),
      ),
    );
  }
}
