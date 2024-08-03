import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions_list.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatefulWidget {
  const Question({super.key, required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer;

  @override
  State<Question> createState() {
    return _QuestionState();
  }
}

class _QuestionState extends State<Question> {
  int questionPointer = 0;

  void questionPointerChange(String answer) {
    widget.onSelectAnswer(answer);
    setState(() {
      questionPointer += 1;
    });
  }

  @override
  Widget build(context) {
    var currentquestions = questionList[questionPointer];
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentquestions.text,
              style: GoogleFonts.dosis(
                  color: const Color.fromARGB(255, 244, 196, 247),
                  fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 20),
            ...currentquestions.getShuffledAnswers().map((item) {
              return AnswerButton(
                  buttonAction: () {
                    questionPointerChange(item);
                  },
                  buttonLabel: item);
            })
          ],
        ),
      ),
    );
  }
}
