import 'package:flutter/material.dart';
import 'group.dart';
import 'about.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text('Home'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'Home') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              } else if (value == 'Group') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GroupPage()));
              } else if (value == 'About') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutPage()));
              }
            },
            itemBuilder: (BuildContext context) {
              return {'Home', 'Group', 'About'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tugas 2 Kelompok Pemrograman Mobile',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Anggota Kelompok'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GroupPage()),
                );
              },
            ),
            SizedBox(height: 10),
            ElevatedButton(
              child: Text('Informasi Kelompok'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
