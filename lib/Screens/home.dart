import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'files.dart';
import 'profile.dart';
import 'upload.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 1;
  List<Widget> _pages = [
    FilesScreen(),
    UploadScreen(),
    ProfileScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: '',
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle),
          label: '',
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: '',
          backgroundColor: Colors.blue,
        )
      ], type: BottomNavigationBarType.shifting, currentIndex: _selectedIndex, iconSize: 40, onTap: _onItemTapped),
    );
  }
}
