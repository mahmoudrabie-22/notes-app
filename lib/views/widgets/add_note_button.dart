import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add%20note/add_note_cubit.dart';
import 'package:notes_app/cubits/notes%20cubit/notes_cubit_cubit.dart';
import 'package:notes_app/views/widgets/add_note_form.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.0,
          right: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteLoading,
              child: const SingleChildScrollView(child: AddNoteForm()),
            );
          },
          listener: (context, state) {
            if (state is AddNoteFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    state.errMsg,
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.red,
                ),
              );
            }
            if (state is AddNoteSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'Note added successfully',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.green,
                ),
              );
              BlocProvider.of<NotesCubit>(context).readAllNotes();
              Navigator.pop(context);
            }
          },
        ),
      ),
    );
  }
}
