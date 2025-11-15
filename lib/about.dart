import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text('Informasi Kelompok'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Fakultas: Teknologi Informasi',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Prodi: Sistem Informasi',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Kelas: 5P51',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Mata Kuliah: Pemrograman Mobile',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Anggota Kelompok:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Pradika Satia Putra'),
                      SizedBox(height: 8),
                      Text('Chairul Iman'),
                      SizedBox(height: 8),
                      Text('Muh Faris Khabibi'),
                      SizedBox(height: 8),
                      Text('Al-Muchalif Arnama'),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('23.230.0067'),
                      SizedBox(height: 8),
                      Text('23.230.0091'),
                      SizedBox(height: 8),
                      Text('23.230.0089'),
                      SizedBox(height: 8),
                      Text('23.230.0025'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Divider(),
              SizedBox(height: 10),
              ElevatedButton(
                child: Text('Kembali'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
