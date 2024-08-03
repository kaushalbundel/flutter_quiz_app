import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
                "You have answered X correct responses out of total Y responses"),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Replay"),
            )
          ],
        ),
      ),
    );
  }
}
