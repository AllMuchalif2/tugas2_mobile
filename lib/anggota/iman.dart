import 'package:flutter/material.dart';

class ImanPage extends StatelessWidget {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Gambar Profil
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/img/iman.jpg'),
            ),
            const SizedBox(height: 16),

            // Data Profil
            const Text(
              'Chairul Iman',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text('NIM: 23.230.0091'),
            const SizedBox(height: 12),

            const Text('Fakultas: Teknologi Informasi'),
            const Text('Program Studi: Sistem Informasi'),
            const Text('Alamat: Krapyak Kidul Gang 5a'),
            const Text('Email: khoirulimann15@gmail.com'),
            const Text('No. HP: 0878-2610-8793'),
            const SizedBox(height: 20),

            // Input Text
            TextField(
              controller: _namaController,
              decoration: const InputDecoration(
                labelText: 'Ubah Nama',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Ubah Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // Tombol
            Column(
              children: [
                Divider(),
                ElevatedButton(
                  child: Text('Kembali'),
                  style: ElevatedButton.styleFrom(
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
    );
  }
}
