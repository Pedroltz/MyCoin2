import 'package:flutter/material.dart';
import 'package:my_coin2/QuizPages/questions.dart';
import 'package:my_coin2/QuizPages/resume.dart';

class Argumentos {
  final int acertos;

  Argumentos(this.acertos);
}

class Quiz04 extends StatefulWidget {
  const Quiz04({super.key});

  @override
  State<Quiz04> createState() => _Quiz04State();
}

class _Quiz04State extends State<Quiz04> {
  int perguntaNumero = 0;
  int acertos = 0;
  int errors = 0;

  @override
  void initState() {
    super.initState();
    quiz4.shuffle();  
  }

  void respondeu(int respostaNumero) {
    setState(() {
      if (quiz4[perguntaNumero]['correct'] == respostaNumero) {
        print('acertou');
        acertos++;
      } else {
        print('errou');
        errors++;
      }

      print('Acertos totais: $acertos erros totais: $errors');

      if (perguntaNumero == quiz4.length - 1) {
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
          "Quiz Capítulo 4",
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
                "${perguntaNumero + 1}/${quiz4.length}",
                style: const TextStyle(
                    color: Colors.white, fontFamily: "Bree", fontSize: 23),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 100, left: 5, right: 5),
              child: Text(
                quiz4[perguntaNumero]['questionText'],
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
                        i < quiz4[perguntaNumero]['answer'].length;
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
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              foregroundColor:
                                  MaterialStateProperty.all<Color>(Colors.red),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side:
                                      const BorderSide(color: Colors.red, width: 2.0),
                                ),
                              ),
                            ),
                            child: Text(
                              quiz4[perguntaNumero]['answer'][i],
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
