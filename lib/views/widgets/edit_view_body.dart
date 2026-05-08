import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes%20cubit/notes_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title;

  String? content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(height: 32),
          CustomAppBar(
            icon: Icons.check,
            title: 'Edit Note',
            onTap: () {
              if (title != null) widget.note.title = title!;
              if (content != null) widget.note.subTitle = content!;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).readAllNotes();
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 24),
          CustomTextField(
            hintText: widget.note.title,
            onChanged: (val) {
              title = val;
            },
          ),
          SizedBox(height: 24),
          CustomTextField(
            hintText: widget.note.subTitle,
            maxLines: 5,
            onChanged: (val) {
              content = val;
            },
          ),
        ],
      ),
    );
  }
}
