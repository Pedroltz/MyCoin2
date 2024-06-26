import 'package:flutter/material.dart';
import 'package:my_coin2/QuizPages/questions.dart';
import 'package:my_coin2/QuizPages/resume.dart';

class Argumentos {
  final int acertos;

  Argumentos(this.acertos);
}

class Quiz01 extends StatefulWidget {
  const Quiz01({super.key});

  @override
  State<Quiz01> createState() => _Quiz01State();
}

class _Quiz01State extends State<Quiz01> {
  int perguntaNumero = 0;
  int acertos = 0;
  int errors = 0;

  @override
  void initState() {
    super.initState();
    quiz1.shuffle(); 
  }

  void respondeu(int respostaNumero) {
    setState(() {
      if (quiz1[perguntaNumero]['correct'] == respostaNumero) {
        print('acertou');
        acertos++;
      } else {
        print('errou');
        errors++;
      }

      print('Acertos totais: $acertos erros totais: $errors');

      if (perguntaNumero == quiz1.length - 1) {
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
          "Quiz Capítulo 1",
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
              padding: EdgeInsets.only(top: 40), 
              child: Text(
                "${perguntaNumero + 1}/${quiz1.length}",
                style: const TextStyle(
                    color: Colors.white, fontFamily: "Bree", fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 80, left: 10, right: 10), 
              child: Text(
                quiz1[perguntaNumero]['questionText'],
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
                height: 280, 
                child: Column(
                  children: [
                    for (var i = 0;
                        i < quiz1[perguntaNumero]['answer'].length;
                        i++)
                      Padding(
                        padding:
                            EdgeInsets.only(top: i == 0 ? 40 : 0, bottom: 10), 
                        child: SizedBox(
                          height: 60, 
                          width: 300, 
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
                                      BorderSide(color: Colors.red, width: 2.0),
                                ),
                              ),
                            ),
                            child: Text(
                              quiz1[perguntaNumero]['answer'][i],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 18, 
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
