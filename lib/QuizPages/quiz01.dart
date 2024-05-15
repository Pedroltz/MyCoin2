import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_coin2/QuizPages/questions.dart';
import 'package:my_coin2/QuizPages/results.dart';

class Quiz01 extends StatefulWidget {
  Quiz01({Key? key}) : super(key: key);

  @override
  State<Quiz01> createState() => _Quiz01State();
}

class _Quiz01State extends State<Quiz01> {
  int perguntaNumero = 1;
  int acertos = 0;
  int erros = 0;

  @override
  Widget build(BuildContext context) {
    print("Dados do Quiz");
    print(quiz1);

    void respondeu(int perguntaNumero){
      setState(() {
        if(quiz1[perguntaNumero - 1]["correct"] == 1){
          print("Acertou");
          acertos++;
        }
        else{
          perguntaNumero++;
        }
      });
    }

    print("Acertos totais: $acertos erros totais $erros");

    if (perguntaNumero == 5){
      print("Terminou o quiz");
      Navigator.push(context,MaterialPageRoute(builder: (context) => Results()));
    };

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
              padding: EdgeInsets.only(top: 50),
              child: Text(
                "$perguntaNumero/5",
                style: const TextStyle(
                    color: Colors.white, fontFamily: "Bree", fontSize: 23),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 5, right: 5),
              child: Text(
                quiz1[0]["questionText"],
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.white, fontFamily: "Bree", fontSize: 18),
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
                    Padding(
                      padding: EdgeInsets.only(top: 60, bottom: 20),
                      child: SizedBox(
                        height: 65,
                        width: 330,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.red),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(
                                    color: Colors.red,
                                    width: 2.0), // Adiciona uma borda vermelha
                              ),
                            ),
                          ),
                          child: Text(
                            quiz1[perguntaNumero -1][0]["anwser"][0],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: SizedBox(
                        height: 65,
                        width: 330,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.red),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(
                                    color: Colors.red,
                                    width: 2.0), // Adiciona uma borda vermelha
                              ),
                            ),
                          ),
                          child: Text(
                            quiz1[perguntaNumero - 1]["anwser"][1],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: SizedBox(
                        height: 65,
                        width: 330,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.red),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(
                                    color: Colors.red,
                                    width: 2.0), // Adiciona uma borda vermelha
                              ),
                            ),
                          ),
                          child: Text(
                            quiz1[perguntaNumero - 1]["anwser"][2],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    )
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
