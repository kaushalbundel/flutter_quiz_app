import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions_list.dart';
import 'package:quiz_app/results_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.selectedAnswers});
  final List<String> selectedAnswers;
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questionList[i].text,
          'correctAnswers': questionList[i].answers[0],
          'userAnswers': selectedAnswers[i]
        },
      );
    }
    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    int getTotalQuestions = questionList.length;
    int getCorrectAnswers = summaryData.where((data) {
      return data['correctAnswers'] == data['userAnswers'];
    }).length;
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You have answered $getCorrectAnswers correct responses out of $getTotalQuestions questions",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w800),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            ResultsSummary(summaryText: summaryData),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              label: const Text("Start Again"),
              icon: const Icon(
                Icons.arrow_back,
                size: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}
