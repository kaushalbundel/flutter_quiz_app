import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.buttonAction, required this.buttonLabel});
  final void Function() buttonAction;
  final String buttonLabel;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: buttonAction,
      style: ElevatedButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 248, 249, 250),
        backgroundColor: const Color.fromARGB(255, 20, 50, 244),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))),
      ),
      child: Text(
        buttonLabel,
        style: const TextStyle(fontWeight: FontWeight.w700),
        textAlign: TextAlign.center,
      ),
    );
  }
}
