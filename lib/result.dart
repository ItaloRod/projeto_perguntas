import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int pontuacao;
  final void Function() quandoReiniciaQuestionario;
  Result(this.pontuacao, this.quandoReiniciaQuestionario, {super.key});

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Você é um Jedi!!';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(fraseResultado,
            style: const TextStyle(
            fontSize: 28
            )
          )
        ),
        TextButton(
          onPressed: quandoReiniciaQuestionario,
          child: const Text('Reiniciar?',
              style: TextStyle(color: Colors.blue)
          ),
        )
      ],
    );
  }
}
