import 'package:flutter/material.dart';
import 'package:quiz_app/screens/home_page.dart';
// import 'intro_page.dart';
import 'home_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Navigasi otomatis ke halaman berikut setelah 3 detik
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });

    return Scaffold(
      backgroundColor: const Color(0xFF6345F1),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFF6345F1), // Warna latar belakang ungu
        ),
        child: const Center(
          child: Text(
            'MIQUIZ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
