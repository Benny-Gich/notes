import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class Note extends Equatable {
  final String id;
  final String title;
  final String content;
  final DateTime modifiedTime;

  Note({
    required this.id,
    required this.title,
    required this.content,
    required this.modifiedTime,
  });
  factory Note.create({required String title, required String content}) => Note(
        id: Uuid().v4(),
        title: title,
        content: content,
        modifiedTime: DateTime.now(),
      );
  @override
  List<Object?> get props => [id, title, content, modifiedTime];

  Note copyWith({
    String? id,
    String? title,
    String? content,
    DateTime? modifiedTime,
  }) {
    return Note(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      modifiedTime: modifiedTime ?? this.modifiedTime,
    );
  }
}

// List<Note> sampleNotes = [
//   Note(
//     id: 0,
//     title: "Shopping List",
//     content: ("Unga\n Toothbrush\n Kales\n Blue Band\n Rice\n Sugar\n Eggs\n"),
//     modifiedTime: DateTime(2024, 1, 1, 12, 23),
//   ),
//   Note(
//     id: 1,
//     title: "TO Do",
//     content: ("Visit Mum\n Sell phones\n Get a hair cut\n"),
//     modifiedTime: DateTime(2024, 4, 2, 34, 5),
//   ),
//   Note(
//     id: 2,
//     title: "Favourites",
//     content: ("Psycho\n Nakati\n Nafasi Nyingine\n"),
//     modifiedTime: DateTime(2024, 4, 2, 12, 5),
//   ),
//   Note(
//     id: 3,
//     title: "Books",
//     content: ("Atomic Habits\n Rich Dad Poor Dad\n  The Rational Male\n"),
//     modifiedTime: DateTime(2024, 3, 8, 10, 15),
//   ),
// ];
