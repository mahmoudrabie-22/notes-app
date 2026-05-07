part of 'notes_cubit_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitialState extends NotesState {}

final class NotesLoadingState extends NotesState {}

final class NotesSuccessState extends NotesState {
  final List<NoteModel> notes;

  NotesSuccessState(this.notes);
}

final class NotesFailureState extends NotesState {
  NotesFailureState({required this.errMsg});
  final String errMsg;
}
