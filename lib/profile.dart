import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String nama;
  ProfilePage({required this.nama});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil $nama'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Profil Anggota'),
            SizedBox(height: 10),
            Text('Nama: $nama'),
            SizedBox(height: 10),
            Text('NIM: 123456789'),
            SizedBox(height: 10),
            Text('Hobi: Coding Flutter'),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Kembali'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
