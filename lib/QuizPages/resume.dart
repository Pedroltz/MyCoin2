import 'package:flutter/material.dart';
import 'package:my_coin2/pages/homePage.dart';

class Resultado extends StatefulWidget {
  final int acertos;

  // No construtor, requerimos esta variável
  Resultado({Key? key, required this.acertos}) : super(key: key);

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    bool isSuccess = widget.acertos >= 3;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: const Text(
          'Resultados',
          style: TextStyle(
            fontFamily: "Bree",
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20.0),
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              isSuccess ? Icons.check_circle_outline : Icons.cancel_outlined,
              color: const Color.fromARGB(255, 255, 255, 255),
              size: 100.0,
            ),
            const SizedBox(height: 20.0),
            Text(
              isSuccess ? "Parabéns!" : "Que pena!",
              style: const TextStyle(
                fontSize: 36.0,
                fontFamily: "Bree",
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              "Você acertou ${widget.acertos} questões",
              style: const TextStyle(
                fontFamily: "Libre",
                fontSize: 24.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(top: 0, bottom: 20),
              child: SizedBox(
                height: 65,
                width: 330,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomePage()));
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.white),
                    foregroundColor:
                        WidgetStateProperty.all<Color>(Colors.red),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.red, width: 2.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    "Voltar ao Menu",
                    textAlign: TextAlign.center,
                    style: TextStyle(
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
    );
  }
}
