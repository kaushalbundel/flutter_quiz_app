import 'package:flutter/material.dart';

String questionImage = 'assets/images/quiz-logo.png';

class MainScreen extends StatelessWidget {
  const MainScreen(this.quizFunction, {super.key});

  final void Function() quizFunction;
  @override
  Widget build(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            questionImage,
            width: 200,
            color: const Color.fromARGB(200, 255, 255, 255),
          ),
        ),
        const SizedBox(
          width: 20,
          height: 20,
        ),
        const Text(
          "Learn Flutter the fun way",
          style: TextStyle(
              color: Color.fromARGB(253, 252, 252, 253),
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 20,
          height: 20,
        ),
        OutlinedButton.icon(
          icon: const Icon(
            Icons.arrow_right_outlined,
            color: Colors.white70,
          ),
          style: OutlinedButton.styleFrom(
              shape: const RoundedRectangleBorder(),
              side: const BorderSide(color: Colors.white70)),
          onPressed: quizFunction,
          label: const Text(
            "Press!",
            style: TextStyle(color: Color.fromARGB(255, 252, 252, 253)),
          ),
        )
      ],
    );
  }
}
