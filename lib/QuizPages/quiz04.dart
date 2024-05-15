import 'package:flutter/material.dart';

class Quiz04 extends StatefulWidget {
  const Quiz04({super.key});

  @override
  State<Quiz04> createState() => _Quiz04State();
}

class _Quiz04State extends State<Quiz04> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Quiz Capítulo",
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
            const Padding(padding: EdgeInsets.only(top: 50),
              child: Text(
              "1/5",
              style: TextStyle(
                  color: Colors.white, fontFamily: "Bree", fontSize: 23),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 100, left: 5, right: 5),
              child: Text(
                "Quem é o verdadeiro vilão do personagem Homem-Aranha?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Bree",
                    fontSize: 20),
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
                    Padding(padding: const EdgeInsets.only(top: 60, bottom: 20),
                      child: SizedBox(
                      height: 65,
                      width: 330,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red, width: 2.0), // Adiciona uma borda vermelha
                            ),
                          ),
                        ),
                        child: const Text(
                          "Resposta 1",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 20),
                      child: SizedBox(
                      height: 65,
                      width: 330,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red, width: 2.0), // Adiciona uma borda vermelha
                            ),
                          ),
                        ),
                        child: const Text(
                          "Resposta 2",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 20),
                      child: SizedBox(
                      height: 65,
                      width: 330,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red, width: 2.0), // Adiciona uma borda vermelha
                            ),
                          ),
                        ),
                        child: const Text(
                          "Resposta 3",
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
