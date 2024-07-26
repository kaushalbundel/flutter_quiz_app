import 'package:flutter/material.dart';

String questionImage = 'assets/images/quiz-logo.png';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  onPressed() {}
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(color: Color.fromARGB(255, 182, 9, 245)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              questionImage,
              width: 200,
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
          ElevatedButton(onPressed: onPressed, child: const Text("Press!"))
        ],
      ),
    );
  }
}
