import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();
  

  @override
  void initState() {
    super.initState();

  }



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
