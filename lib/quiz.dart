import "package:flutter/material.dart";
import 'package:quiz_app/data/questions_list.dart';
import 'package:quiz_app/main_screen.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start_screen';
  List<String> givenAnswers = [];
  // @override void initState() {
  //   // TODO: implement initState
  //   activeScreen = MainScreen(switchScreen);
  //   super.initState();
  // }
  void captureAnswer(String answer) {
    givenAnswers.add(answer);
    if (givenAnswers.length == questionList.length) {
      setState(() {
        // givenAnswers = [];
        activeScreen = 'results_screen';
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions_screen';
    });
  }

//change screen on the last page (results page)

  moveToMainScreen() {
    setState(() {
      givenAnswers = [];
      activeScreen = 'start_screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenChange = MainScreen(switchScreen);
    if (activeScreen == 'questions_screen') {
      screenChange = Question(
        onSelectAnswer: captureAnswer,
      );
    }

    if (activeScreen == 'results_screen') {
      screenChange = ResultsScreen(
        selectedAnswers: givenAnswers,
        backToMainScreen: moveToMainScreen,
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 182, 9, 245),
            ),
            child: screenChange),
      ),
    );
  }
}
