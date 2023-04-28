import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:developer';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navbar(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            SizedBox(height: 16),
            Text(
              'Luke Juniel M. Galicia',
              style: TextStyle(fontSize: 30),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                leading: Image(
                  image: AssetImage('assets/images/tup.png'),
                  height: 60,
                  width: 60,
                ),
                title: Text(
                  "4th Year Student 🎓",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text("Studying BS Computer Science"),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                leading: Image(
                  image: AssetImage('assets/images/logo.png'),
                  height: 60,
                  width: 60,
                ),
                title: Text(
                  "CCCI Student Intern 💻",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text("Learning vue.js, flutter and more!"),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                leading: Image(
                  image: AssetImage('assets/images/stayc.jpg'),
                  height: 60,
                  width: 60,
                ),
                title: Text(
                  "I Like K-Pop 🎵",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text("And other music genre!"),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                leading: Image(
                  image: AssetImage('assets/images/movie.png'),
                  height: 60,
                  width: 60,
                ),
                title: Text(
                  "I Like Watching Movies 🎬",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text("My favorite is BTS the movie "),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key});

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  List<dynamic> _galleryData = [];

  Future<void> _fetchData() async {
    final dio = Dio();
    try {
      final response =
          await dio.get('https://jsonplaceholder.typicode.com/photos');
      setState(() {
        _galleryData = List<dynamic>.from(response.data).take(20).toList();
      });
    } catch (e) {
      log('Error fetching data: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _galleryData.isEmpty
            ? const CircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  Expanded(
                    child: ListView.builder(
                      itemCount: _galleryData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: Column(
                            children: [
                              Image.network(
                                _galleryData[index]['url'],
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: 200,
                              ),
                              ListTile(
                                title: Text(_galleryData[index]['title']),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        // enter code here
        );
  }
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        // enter code here
        );
  }
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
