part of 'notes_cubit.dart';

class NotesState extends Equatable {
  const NotesState({
    this.notes = const [],
    this.favourites = const [],
    this.trash = const [],
  });
  final List<Note> notes;
  final List<Note> favourites;
  final List<Note> trash;

  @override
  List<Object> get props => [notes, favourites, trash];

  NotesState copyWith({
    List<Note>? notes,
    List<Note>? favourites,
    List<Note>? trash,
  }) {
    return NotesState(
      notes: notes ?? this.notes,
      favourites: favourites ?? this.favourites,
      trash: trash ?? this.trash,
    );
  }
}
