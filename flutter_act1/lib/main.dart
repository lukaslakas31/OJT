import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyApp()
      )
      );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 137, 118, 100),
        title: const Text("Activity #1 Application"),
      ),
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
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'About Me',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.construction),
            label: 'Skills ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Contact Me',
          ),
        ],
      ),
    );
  }
}
