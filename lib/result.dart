import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text('Parabéns!',
        style: TextStyle(
        fontSize: 28
        )
      )
    );
  }
}
