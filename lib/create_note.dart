import 'package:flutter/material.dart';
import 'package:notes/note.dart';

class CreateNote extends StatefulWidget {
  final Note? note;
  const CreateNote({super.key, this.note});

  @override
  State<CreateNote> createState() => _CreateNoteState();
}

class _CreateNoteState extends State<CreateNote> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _contentController = TextEditingController();

  @override
  void initState() {
    if (widget.note != null) {
      _titleController = TextEditingController(text: widget.note!.title);
      _contentController = TextEditingController(text: widget.note!.content);
    }
    super.initState();
  }

  bool typing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "New Note",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.attach_file),
            tooltip: "Attach File",
            color: Theme.of(context).colorScheme.primary,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.share),
            tooltip: "Share",
            color: Theme.of(context).colorScheme.primary,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.save),
            tooltip: "Save",
            color: Theme.of(context).colorScheme.primary,
            onPressed: () {
              Navigator.pop(
                  context, [_titleController.text, _contentController.text]);
            },
          )
        ],
      ),
      body: Column(children: [
        TextFormField(
          controller: _titleController,
          style: const TextStyle(fontSize: 25),
          decoration: const InputDecoration(
            hintText: "Title",
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(20),
          ),
        ),
        const SizedBox(height: 20),
        TextFormField(
          controller: _contentController,
          style: const TextStyle(fontSize: 20),
          maxLines: null,
          keyboardType: TextInputType.multiline,
          decoration: const InputDecoration(
            hintText: "Your Story To Tell",
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(20),
          ),
        )
      ]),
    );
  }
}

class Title extends StatefulWidget {
  const Title({super.key});

  @override
  State<Title> createState() => _TitleState();
}

class _TitleState extends State<Title> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'New Note',
        ),
      ),
    );
  }
}




    // return Container(
    //   color: Theme.of(context).colorScheme.primary,
    //   padding: const EdgeInsets.symmetric(),
    //   //margin: const EdgeInsets.symmetric(),
    //   child: Row(
    //     children: <Widget>[
    //       const Text(
    //         "New Note",
    //         style: TextStyle(
    //             color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
    //       ),
    //       IconButton(
    //         icon: const Icon(Icons.attach_file),
    //         onPressed: () {},
    //       ),
    //       IconButton(
    //         icon: const Icon(Icons.save),
    //         onPressed: () {},
    //       ),
    //       IconButton(
    //         onPressed: () {},
    //         icon: const Icon(Icons.share),
    //       ),
    //     ],
    //   ),
    // );
