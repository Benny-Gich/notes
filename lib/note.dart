class Note {
  int id;
  String title;
  String content;
  DateTime modifiedTime;

  Note({
    required this.id,
    required this.title,
    required this.content,
    required this.modifiedTime,
  });
}

List<Note> sampleNotes = [
  Note(
    id: 0,
    title: "Shopping List",
    content: ("Unga\n Toothbrush\n Kales\n Blue Band\n Rice\n Sugar\n Eggs\n"),
    modifiedTime: DateTime(2024, 1, 1, 12, 23),
  ),
  Note(
    id: 1,
    title: "TO Do",
    content: ("Visit Mum\n Sell phones\n Get a hair cut\n"),
    modifiedTime: DateTime(2024, 4, 2, 34, 5),
  ),
  Note(
    id: 2,
    title: "Favourites",
    content: ("Psycho\n Nakati\n Nafasi Nyingine\n"),
    modifiedTime: DateTime(2024, 4, 2, 12, 5),
  ),
  Note(
    id: 3,
    title: "Books",
    content: ("Atomic Habits\n Rich Dad Poor Dad\n  The Rational Male\n"),
    modifiedTime: DateTime(2024, 3, 8, 10, 15),
  ),
];
