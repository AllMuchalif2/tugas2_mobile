import 'package:flutter/material.dart';

class AlifPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _snackBar() {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('berhasil diubah'),
          backgroundColor: Colors.black,
          duration: Duration(seconds: 2),
          action: SnackBarAction(
            label: "ok",
            onPressed: () {},
            textColor: Colors.white,
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text('Informasi Mahasiswa'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(shape: BoxShape.circle),
              clipBehavior: Clip.antiAlias,
              width: 150,
              child: Image.asset(
                'assets/img/alif.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('NIM'),
                      Text('Nama'),
                      Text('Fakultas'),
                      Text('Program Studi'),
                      Text('Email'),
                      Text('Alamat'),
                      Text('No. HP'),
                    ],
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('23.230.0025'),
                      Text('Al - Muchalif Arnama'),
                      Text('Fakultaas Teknologi Informasi'),
                      Text('Sistem Informasi'),
                      Text('Podosugih, Pekalongan'),
                      Text('almuchalifal@gmail.com'),
                      Text('0812-3456-7890'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "ubah no. HP",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                TextFormField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: true,
                    suffixIcon: Icon(Icons.phone_android, color: Colors.black),
                    labelText: 'no. HP',
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    _snackBar();
                  },
                  child: Text('ubah'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 48),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                  ),
                ),
                // Tombol
                Column(
                  children: [
                    Divider(),
                    ElevatedButton(
                      child: Text('Kembali'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 48),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
