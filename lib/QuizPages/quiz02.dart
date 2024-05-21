import 'package:flutter/material.dart';
import 'package:my_coin2/QuizPages/questions.dart';
import 'package:my_coin2/QuizPages/resume.dart';

class Argumentos {
  final int acertos;
  final int estado = 2;

  Argumentos(this.acertos);
}

class Quiz02 extends StatefulWidget {
  const Quiz02({super.key});

  @override
  State<Quiz02> createState() => _Quiz02State();
}

class _Quiz02State extends State<Quiz02> {
  int perguntaNumero = 0;
  int acertos = 0;
  int errors = 0;

  @override
  void initState() {
    super.initState();
    quiz2.shuffle();  // Chame shuffle no initState para evitar múltiplos embaralhamentos
  }

  void respondeu(int respostaNumero) {
    setState(() {
      if (quiz2[perguntaNumero]['correct'] == respostaNumero) {
        print('acertou');
        acertos++;
      } else {
        print('errou');
        errors++;
      }

      print('Acertos totais: $acertos erros totais: $errors');

      if (perguntaNumero == quiz2.length - 1) {
        print('Terminou o Quiz');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Resultado(acertos: acertos),
          ),
        );
      } else {
        perguntaNumero++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Quiz Capítulo 2",
          style: TextStyle(color: Colors.white, fontFamily: "Bree"),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.red,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                "${perguntaNumero + 1}/${quiz2.length}",
                style: const TextStyle(
                    color: Colors.white, fontFamily: "Bree", fontSize: 23),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 100, left: 5, right: 5),
              child: Text(
                quiz2[perguntaNumero]['questionText'],
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.white, fontFamily: "Bree", fontSize: 20),
              ),
            ),
            const Spacer(),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: SizedBox(
                width: double.infinity,
                height: 350,
                child: Column(
                  children: [
                    for (var i = 0;
                        i < quiz2[perguntaNumero]['answer'].length;
                        i++)
                      Padding(
                        padding:
                            EdgeInsets.only(top: i == 0 ? 60 : 0, bottom: 20),
                        child: SizedBox(
                          height: 65,
                          width: 330,
                          child: ElevatedButton(
                            onPressed: () {
                              respondeu(i);
                            },
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all<Color>(
                                  Colors.white),
                              foregroundColor:
                                  WidgetStateProperty.all<Color>(Colors.red),
                              shape: WidgetStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side:
                                      BorderSide(color: Colors.red, width: 2.0),
                                ),
                              ),
                            ),
                            child: Text(
                              quiz2[perguntaNumero]['answer'][i],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
