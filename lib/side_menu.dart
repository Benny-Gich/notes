import 'package:flutter/material.dart';
import 'package:notes/trash.dart';
import 'package:notes/home_screen.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: All',
      style: optionStyle,
    ),
    Text(
      'Index 1: Favourites',
      style: optionStyle,
    ),
    Text(
      'Index 2: Trash',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            child: Text(
              "Notes App",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
              leading: const Icon(Icons.note),
              title: const Text("All Notes"),
              selected: _selectedIndex == 0,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HomeScreen()));
              }),
          ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text("Favourites"),
              selected: _selectedIndex == 1,
              onTap: () {
                _onItemTapped(1);
              }),
          ListTile(
            leading: const Icon(Icons.delete),
            title: const Text("Trash"),
            selected: _selectedIndex == 2,
            onTap: () {
              //_onItemTapped(2);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const Trash()));
            },
          ),
        ],
      ),
    );
  }
}
