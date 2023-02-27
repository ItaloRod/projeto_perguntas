import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String text = "";
  Question(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(text,
      style: const TextStyle(
        fontSize: 28
      ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
