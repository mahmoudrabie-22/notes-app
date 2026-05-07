import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/notes%20cubit/notes_cubit_cubit.dart';
import 'package:notes_app/views/widgets/add_note_button.dart';
import 'package:notes_app/views/widgets/body_widget.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          child: Icon(Icons.add, color: Colors.black),
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(16),
              ),
              context: context,
              builder: (context) {
                return AddNoteButton();
              },
            );
          },
        ),
        body: const BodyWidget(),
      ),
    );
  }
}
