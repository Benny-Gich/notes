import 'package:flutter/material.dart';
import 'package:notes/create_note.dart';
import 'package:notes/home_screen.dart';
import 'package:notes/note.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case "/create_note":
            return MaterialPageRoute(
              builder: (context) => CreateNote(
                note: settings.arguments as Note?,
              ),
            );
          default:
            return MaterialPageRoute(
              builder: (context) => HomeScreen(),
            );
        }
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreenAccent),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
