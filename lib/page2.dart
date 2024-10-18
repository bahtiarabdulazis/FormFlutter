import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Mengganti latar belakang dengan gradasi pink
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFFF7E7E), // Warna pink muda
                  Color(0xFFFF3D3D), // Warna pink tua
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 70),
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/ay6.jpg'),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Bahtiar Abdul Azis',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  buildSection(
                    title: 'About',
                    content: 'I went to Wikrama Vocational School majoring in Software and Game Development. I focus on the front-end and am very passionate about learning new things.',
                    backgroundColor: Colors.white.withOpacity(0.8), // Warna latar belakang bagian informasi
                  ),
                  buildSection(
                    title: 'Quote',
                    content: 'Dalam mempersiapkan pertempuran, saya selalu menemukan bahwa rencana tidak berguna, tetapi perencanaan sangat diperlukan.',
                    backgroundColor: Colors.white.withOpacity(0.8), // Warna latar belakang bagian kutipan
                  ),
                  buildSkillSection(
                    title: 'Skills',
                    skills: ['JavaScript', 'PHP', 'VueJS', 'React'],
                    backgroundColor: Colors.white.withOpacity(0.8), // Warna latar belakang bagian keterampilan
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: Colors.transparent, // Ganti dengan warna transparan untuk mengikuti latar belakang
                      side: const BorderSide(color: Colors.white), // Garis tepi putih
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Go Back',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Fungsi untuk membuat section umum
  Widget buildSection({
    required String title,
    required String content,
    required Color? backgroundColor,
  }) {
    return Container(
      width: double.infinity, // Lebar penuh untuk semua kartu
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      constraints: const BoxConstraints(
        minHeight: 150,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            content,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSkillSection({
    required String title,
    required List<String> skills,
    required Color? backgroundColor,
  }) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      constraints: const BoxConstraints(
        minHeight: 150,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: skills.map((skill) {
              return Chip(
                label: Text(
                  skill,
                  style: const TextStyle(color: Colors.black),
                ),
                backgroundColor: Colors.transparent, // Ganti dengan warna transparan untuk mengikuti latar belakang
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(color: Colors.white), // Garis tepi putih
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Page2(),
  ));
}
