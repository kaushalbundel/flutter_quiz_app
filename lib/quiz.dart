import "package:flutter/material.dart";
import 'package:quiz_app/main_screen.dart';
import 'package:quiz_app/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start_screen';

  // @override void initState() {
  //   // TODO: implement initState
  //   activeScreen = MainScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions_screen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 182, 9, 245),
          ),
          child: activeScreen == 'start_screen'
              ? MainScreen(switchScreen)
              : const Question(),
        ),
      ),
    );
  }
}
