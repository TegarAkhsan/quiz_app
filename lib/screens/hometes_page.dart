import 'package:flutter/material.dart';
import 'homequiz_page.dart';

class Question {
  final String question;
  final List<String> options;
  final int correctAnswerIndex;

  Question(this.question, this.options, this.correctAnswerIndex);
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentIndex = 0;
  int correctAnswers = 0;
  int wrongAnswers = 0;

  final List<Question> questions = [
    Question(
        'Bahasa Pemrograman yang digunakan dalam pemrograman website adalah',
        [
          'HTML, CSS, JavaScript',
          'Python, Java, C++',
          'Kotlin, Swift, Dart',
          'SQL, NoSQL, MongoDB'
        ],
        0),
    Question(
        'CSS digunakan untuk?',
        [
          'Mengelola database',
          'Styling website',
          'Membuat backend',
          'Menjalankan server'
        ],
        1),
    Question(
        'JavaScript digunakan untuk?',
        [
          'Menata layout',
          'Mengelola server',
          'Interaksi website',
          'Membuat API'
        ],
        2),
    Question('Framework untuk CSS berikut adalah?',
        ['Laravel', 'Bootstrap', 'Django', 'Flask'], 1),
    Question(
        'React digunakan untuk?',
        [
          'Backend development',
          'Membuat aplikasi mobile',
          'Frontend development',
          'Database'
        ],
        2),
  ];

  void _answerQuestion(int selectedIndex) {
    if (selectedIndex == questions[currentIndex].correctAnswerIndex) {
      correctAnswers++;
    } else {
      wrongAnswers++;
    }

    if (currentIndex < questions.length - 1) {
      setState(() => currentIndex++);
    } else {
      _showResult();
    }
  }

  void _showResult() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Hasil Kuis'),
        content: Text('Benar: $correctAnswers\nSalah: $wrongAnswers'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const HomeQuizPage()),
                (route) => false,
              );
            },
            child: const Text('Selesai'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6345F1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Pemrograman Website',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              questions[currentIndex].question,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 20),
            ...List.generate(questions[currentIndex].options.length, (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ElevatedButton(
                  onPressed: () => _answerQuestion(index),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: Text(
                    questions[currentIndex].options[index],
                    style: const TextStyle(
                        color: Color(0xFF6345F1), fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
