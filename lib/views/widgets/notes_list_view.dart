import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(vertical: 4.0),
          child: NoteItem(),
        ),
      ),
    );
  }
}
