import 'package:flutter/material.dart';

class ResultsSummary extends StatelessWidget {
  const ResultsSummary({super.key, required this.summaryText});

  final List<Map<String, Object>> summaryText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryText.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 20,
                  height: 20,
                  alignment: Alignment.topCenter,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 246, 243, 243)),
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['question'] as String,
                          style: const TextStyle(color: Colors.white),
                        ),
                        Text(
                          "Correct Answer: ${data['correctAnswers'] as String}",
                          style: const TextStyle(
                              color: Color.fromARGB(255, 4, 20, 246)),
                        ),
                        Text(
                          "User Answer: ${data['userAnswers'] as String}",
                          style: const TextStyle(
                              color: Color.fromARGB(255, 168, 255, 7)),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
