import 'package:flutter/material.dart';
import 'quiz_page.dart';

class HomeQuizPage extends StatelessWidget {
  const HomeQuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth =
        MediaQuery.of(context).size.width; // Mengambil lebar layar perangkat

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.all(20.0), // Memberikan padding di seluruh sisi
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Avatar pengguna
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/profile_image.png'),
              ),
              const SizedBox(height: 20),
              // Nama pengguna
              const Text(
                'Jonathan',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              // Kartu untuk kuis Algoritma dan Pemrograman
              Container(
                width: screenWidth -
                    20, // Mengatur lebar container agar sesuai dengan layar
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF6345F1), Color(0xFF7D67F5)],
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    const Text(
                      'Algoritma dan Pemrograman',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context); // Kembali ke halaman sebelumnya
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Color(0xFF6345F1),
                      ),
                      child: const Text('Take Quiz!'),
                    ),
                  ],
                ),
              ),
              // Kartu untuk kuis Pemrograman Web
              Container(
                width: screenWidth - 20,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF6345F1), Color(0xFF7D67F5)],
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    const Text(
                      'Pemrograman Web',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const QuizPage()), // Navigasi ke halaman kuis
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Color(0xFF6345F1),
                      ),
                      child: const Text('Take Quiz!'),
                    ),
                  ],
                ),
              ),
              // Kartu untuk kuis Pemrograman Mobile
              Container(
                width: screenWidth - 20,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF6345F1), Color(0xFF7D67F5)],
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    const Text(
                      'Pemrograman Mobile',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context); // Kembali ke halaman sebelumnya
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Color(0xFF6345F1),
                      ),
                      child: const Text('Take Quiz!'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
