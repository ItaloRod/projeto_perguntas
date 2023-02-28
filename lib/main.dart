import 'package:flutter/material.dart';
import 'package:projeto_perguntas/result.dart';
import 'package:projeto_perguntas/survey.dart';

void main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final List<Map<String, dynamic>> _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        { 'texto':'Preto', 'nota': 10},
        { 'texto':'Vermelho','nota': 7},
        { 'texto':'Verde','nota': 5},
        { 'texto':'Branco','nota': 1}
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        { 'texto': 'Coelho', 'nota': 10},
        { 'texto': 'Cobra', 'nota' : 7 },
        { 'texto': 'Elefante', 'nota': 3},
        { 'texto': 'Leão', 'nota': 2}
      ],
    },
    {
      'texto': 'Qual o seu instrutor favorito?',
      'respostas': [
         { 'texto': 'Maria', 'nota': 10},
         { 'texto': 'João', 'nota': 5},
         { 'texto': 'Leo', 'nota': 9},
         { 'texto': 'Pedro','nota': 1}
      ]
    }
  ];

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder() {
      setState(() {
        _perguntaSelecionada++;
      });
      print('pergunta respondida $_perguntaSelecionada');
  }


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Perguntas'),
          ),
          body: temPerguntaSelecionada? Survey(
              perguntas: _perguntas,
              perguntaSelecionada: _perguntaSelecionada,
              responder: _responder
          ): Result(),
      )
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}
