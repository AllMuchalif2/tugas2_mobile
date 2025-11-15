import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tugas2/anggota/alif.dart';
import 'package:tugas2/anggota/dika.dart';
import 'package:tugas2/anggota/faris.dart';
import 'package:tugas2/anggota/iman.dart';
import 'about.dart';
import 'main.dart';

class GroupPage extends StatelessWidget {
  void showAnggotaDialog(BuildContext context, String nama, Widget pageTujuan) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Informasi Anggota'),
          content: Text('Nama: $nama\nIngin melihat profilnya?'),
          actions: [
            TextButton(
              child: Text('No', style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: Text('Yes', style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => pageTujuan),
                );
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text('Anggota Kelompok'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'Home') {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp()));
              } else if (value == 'About') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutPage()));
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(value: 'Home', child: Text('Home')),
              PopupMenuItem(value: 'About', child: Text('About')),
            ],
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Daftar Anggota Kelompok'),
            SizedBox(height: 20),

            // Tombol anggota
            FractionallySizedBox(
              widthFactor: 0.8,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                ),
                child: Text('Pradika Satia Putra - 23.230.0067'),
                onPressed: () {
                  showAnggotaDialog(context, 'Pradika Satia Putra', DikaPage());
                },
              ),
            ),
            SizedBox(height: 10),
            FractionallySizedBox(
              widthFactor: 0.8,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                ),
                child: Text('Al - Muchalif Arnama - 23.230.0025'),
                onPressed: () {
                  showAnggotaDialog(
                      context, 'Al - Muchalif Arnama', AlifPage());
                },
              ),
            ),
            SizedBox(height: 10),
            FractionallySizedBox(
              widthFactor: 0.8,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                ),
                child: Text('M. Faris Khabibi - 23.230.0089'),
                onPressed: () {
                  showAnggotaDialog(context, 'M. Faris Khabibi', FarisPage());
                },
              ),
            ),
            SizedBox(height: 10),
            FractionallySizedBox(
              widthFactor: 0.8,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                ),
                child: Text('Chairul Iman - 23.230.0091'),
                onPressed: () {
                  showAnggotaDialog(context, 'Chairul Iman', ImanPage());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
