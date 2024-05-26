import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_coin2/GuidePages/page01.dart';
import 'package:my_coin2/GuidePages/page02.dart';
import 'package:my_coin2/GuidePages/page03.dart';
import 'package:my_coin2/GuidePages/page04.dart';

class GuidePage extends StatefulWidget {
  const GuidePage({super.key});

  @override
  State<GuidePage> createState() => _GuidePageState();
}

class _GuidePageState extends State<GuidePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Adicionado fundo branco
      body: Container(
        padding: const EdgeInsets.all(12),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GuidePage01()));
              },
              child: Container(
                width: double.infinity,
                height: 90,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.red, // Tornou o vermelho mais escuro
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Image.asset("assets/img/IconLivro.png"),
                    ),
                    const Text("Capítulo 1\nReceitas e Despesas",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Bree',
                            color: Colors.white))
                  ],
                ),
              ),
            ),
            const Divider(color: Colors.red), // Adicionado divisor vermelho
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GuidePage02()));
              },
              child: Container(
                width: double.infinity,
                height: 90,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.red, // Tornou o vermelho mais escuro
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Image.asset("assets/img/IconLivro.png"),
                    ),
                    const Text("Capítulo 2\nOrçamento Doméstico",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Bree',
                            color: Colors.white))
                  ],
                ),
              ),
            ),
            const Divider(color: Colors.red), // Adicionado divisor vermelho
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GuidePage03()));
              },
              child: Container(
                width: double.infinity,
                height: 90,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.red, // Tornou o vermelho mais escuro
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Image.asset("assets/img/IconLivro.png"),
                    ),
                    const Text("Capítulo 3\nContas Atrasadas e Gestão",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Bree',
                            color: Colors.white))
                  ],
                ),
              ),
            ),
            const Divider(color: Colors.red), // Adicionado divisor vermelho
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GuidePage04()));
              },
              child: Container(
                width: double.infinity,
                height: 90,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.red, // Tornou o vermelho mais escuro
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Image.asset("assets/img/IconLivro.png"),
                    ),
                    const Text("Capítulo 4\nContas Atrasadas",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Bree',
                            color: Colors.white))
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
