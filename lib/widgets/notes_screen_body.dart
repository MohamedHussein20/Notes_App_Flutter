import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/notes_listview.dart';

class NotesScreenBody extends StatefulWidget {
  const NotesScreenBody({super.key});

  @override
  State<NotesScreenBody> createState() => _NotesScreenBodyState();
}

class _NotesScreenBodyState extends State<NotesScreenBody> {
@override
void initState(){
  
  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
  super.initState();
}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(title: "Notes", icon: Icons.search),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}

