import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(
                title: 'Notes',
                icon: Icons.check,
              ),
              SizedBox(
                height: 50,
              ),
              CustomTextField(
                hint: 'title',
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                hint: 'content',
                maxLines: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
