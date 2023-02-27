import 'package:flutter/material.dart';
import 'package:projeto_perguntas/question.dart';
import 'package:projeto_perguntas/answer.dart';

void main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final List<String> perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é o seu animal favorito?'
  ];
  void responder() {

    if(_perguntaSelecionada < perguntas.length -1) {
      setState(() {
        _perguntaSelecionada++;
      });
      print('pergunta respondida $_perguntaSelecionada');
    }
    print('não da pra aumentar o valor para maior que: $_perguntaSelecionada');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Perguntas'),
          ),
          body: Column(
            children: <Widget> [
              Question(perguntas[_perguntaSelecionada]),
              Answer(responder, 'resposta1'),
              Answer(responder, 'resposta2'),
              Answer(responder, 'resposta3')
            ],
          )
      ),
    );
  }
}
class PerguntaApp extends StatefulWidget {

  @override
  State<PerguntaApp> createState() => _PerguntaAppState();

}
  