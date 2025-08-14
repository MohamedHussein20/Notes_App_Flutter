import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(children: [SizedBox(height: 32), CustomTextField()]),
      ),
    );
  }
}