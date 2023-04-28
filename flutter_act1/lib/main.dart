import 'package:flutter/material.dart';
import 'package:flutter_act1/pages/ContactPage.dart';
import 'package:flutter_act1/pages/GalleryPage.dart';
import 'package:flutter_act1/pages/HomePage.dart';
import 'package:flutter_act1/pages/SkillsPage.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navbar(),
    ),
  );
}

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    GalleryPage(),
    SkillsPage(),
    ContactPage(),
  ];

  static const List<Widget> _titleOptions = <Widget>[
    Text("About Me"),
    Text("Gallery"),
    Text("My Skills"),
    Text("Contact Me"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 137, 118, 100),
        title: _titleOptions.elementAt(_selectedIndex),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'About Me',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_rounded),
            label: 'Gallery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.construction),
            label: 'Skills',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Contact Me',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: const Color.fromRGBO(127, 131, 137, 100),
        selectedItemColor: const Color.fromRGBO(255, 137, 118, 100),
        onTap: _onItemTapped,
      ),
    );
  }
}
