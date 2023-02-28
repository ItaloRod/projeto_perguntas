import 'package:flutter/material.dart';
import 'package:projeto_perguntas/question.dart';
import 'package:projeto_perguntas/answer.dart';
class Survey extends StatelessWidget {

  final List<Map<String, dynamic>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

  const Survey({super.key,
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.responder
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> respostas = temPerguntaSelecionada ?  perguntas[perguntaSelecionada]['respostas'] : [];
    List<Widget> widgets = respostas.map(
      (resp) => Answer(
        () => responder(resp['pontuacao']),
        resp['texto']
      )
    ).toList();

    return Column(
      children: <Widget>[
        Question(perguntas[perguntaSelecionada].cast()['texto']),
        ...widgets
      ],
    );
  }
}
