import 'package:flutter/material.dart';

class FilesScreen extends StatefulWidget {
  const FilesScreen({Key? key}) : super(key: key);

  @override
  State<FilesScreen> createState() => _FilesScreenState();
}

class _FilesScreenState extends State<FilesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Files'),
        ),
        body: ListView(
          children: [
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 15,
                itemBuilder: (context, songIndex) {
                  return Card(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            child: CircleAvatar(
                              backgroundImage: NetworkImage('https://cdn.vectorstock.com/i/1000x1000/50/20/no-photo-or-blank-image-icon-loading-images-vector-37375020.webp'),
                              radius: 20,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.4,
                                      child: Text('Audio', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 60),
                          IconButton(
                            icon: Icon(
                              Icons.play_circle_outline,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  );
                })
          ],
        ));
  }
}
