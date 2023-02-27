import 'package:flutter/material.dart';

void main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  final List<String> perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é o seu animal favorito?'
  ];
  void responder() {

    if(perguntaSelecionada < perguntas.length -1) {
      setState(() {
        perguntaSelecionada++;
      });
      print('pergunta respondida $perguntaSelecionada');
    }
    print('não da pra aumentar o valor para maior que: $perguntaSelecionada');
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
              Text(perguntas[perguntaSelecionada]),
              ElevatedButton(
                  onPressed: responder,
                  child: const Text('Resposta 1')
              ),
              ElevatedButton(
                  onPressed: responder,
                  child: const Text('Resposta 2')
              ),
              ElevatedButton(
                  onPressed: responder,
                  child: const Text('Resposta 3')
              )
            ],
          )
      ),
    );
  }
}
class PerguntaApp extends StatefulWidget {

  @override
  State<PerguntaApp> createState() => PerguntaAppState();

}
  