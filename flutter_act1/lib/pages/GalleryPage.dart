import 'package:dio/dio.dart';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key});

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  List<dynamic> _galleryData = [];
  final _storage = const FlutterSecureStorage();

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

  Future<void> _likeImage(int index) async {
    String? likes =
        await _storage.read(key: 'likes${_galleryData[index]["id"]}');
    int currentLikes = likes == null ? 0 : int.parse(likes);
    int newLikes = currentLikes + 1;
    await _storage.write(
        key: 'likes${_galleryData[index]["id"]}', value: newLikes.toString());
    setState(() {});
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
                              InkWell(
                                child: Image.network(
                                  _galleryData[index]['url'],
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: 200,
                                ),
                                onTap: () async {
                                  await _likeImage(index);
                                },
                              ),
                              ListTile(
                                title: Text(_galleryData[index]['title']),
                                subtitle: FutureBuilder(
                                  future: _storage.read(
                                      key: 'likes${_galleryData[index]["id"]}'),
                                  builder: (BuildContext context,
                                      AsyncSnapshot<String?> snapshot) {
                                    if (snapshot.hasData &&
                                        snapshot.data != null) {
                                      return Text('${snapshot.data} likes');
                                    }
                                    return const Text('0 likes');
                                  },
                                ),
                              ),
                              TextButton(
                                onPressed: () async {
                                  await _likeImage(index);
                                },
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(Icons.favorite),
                                      Text(' Like'),
                                    ]),
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
