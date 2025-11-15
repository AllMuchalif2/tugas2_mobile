import 'package:flutter/material.dart';

class FarisPage extends StatefulWidget {
  const FarisPage({super.key});

  @override
  State<FarisPage> createState() => _FarisPageState();
}

class _FarisPageState extends State<FarisPage> {
  final TextEditingController _commentController = TextEditingController();

  void _sendComment() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Komentar Berhasil Dikirim!'),
        duration: Duration(seconds: 2),
      ),
    );

    _commentController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil M. Faris Khabibi'),
        centerTitle: true,
        backgroundColor: const Color(0xff000000),
        foregroundColor: const Color(0xffffffff),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/img/khb.png'),
            ),
            const SizedBox(height: 16),
            const Text(
              'M. Faris Khabibi',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6),
            const Text(
              'Mahasiswa Sistem Informasi',
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Column(
                children: [
                  Row(
                    children: [
                      Text('NIM       : 23.230.0089'),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text('Hobi      : Coding dan Futsal'),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text('Fakultas : Teknologi Informasi'),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text('Progdi   : Sistem Informasi'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              controller: _commentController,
              decoration: const InputDecoration(
                labelText: 'Komentar Anda',
                hintText: 'Masukkan komentar di sini...',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.comment),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _sendComment,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffffffff),
                foregroundColor: const Color(0xff333232),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                minimumSize: const Size(double.infinity, 45),
              ),
              child: const Text('Kirim Komentar'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffffffff),
                foregroundColor: const Color(0xff000000),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
