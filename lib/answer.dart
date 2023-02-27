import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  void Function() handleOnPressButton;
  String text;

  Answer(this.handleOnPressButton, this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: CupertinoButton(
        color: Colors.blue,
        onPressed: handleOnPressButton,
        child: Text(text),
      ),
    );
  }
}
