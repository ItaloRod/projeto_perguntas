import 'package:flutter/material.dart';
import 'package:projeto_perguntas/result.dart';
import 'package:projeto_perguntas/survey.dart';

void main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final List<Map<String, dynamic>> _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        { 'texto':'Preto', 'pontuacao': 10},
        { 'texto':'Vermelho','pontuacao': 7},
        { 'texto':'Verde','pontuacao': 5},
        { 'texto':'Branco','pontuacao': 1}
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        { 'texto': 'Coelho', 'pontuacao': 10},
        { 'texto': 'Cobra', 'pontuacao' : 7 },
        { 'texto': 'Elefante', 'pontuacao': 3},
        { 'texto': 'Leão', 'pontuacao': 2}
      ],
    },
    {
      'texto': 'Qual o seu instrutor favorito?',
      'respostas': [
         { 'texto': 'Maria', 'pontuacao': 10},
         { 'texto': 'João', 'pontuacao': 5},
         { 'texto': 'Leo', 'pontuacao': 9},
         { 'texto': 'Pedro','pontuacao': 1}
      ]
    }
  ];

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  void _responder(int pontuacao) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
      print('pergunta respondida $_perguntaSelecionada');
      print('pontuacao total $_pontuacaoTotal');

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
          ): Result(_pontuacaoTotal, _reiniciarQuestionario),
      )
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}
