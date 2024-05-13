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
      body: Container(
        padding: const EdgeInsets.all(12),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 24),
              child: Text(
                "Primeiro Modulo",
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: "Bree",
                ),
              ),
            ),
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
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Image.asset("assets/img/IconLivro.png"),
                    ),
                    const Text("Capítulo 1\nGastos e Ganhos",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Bree',
                            color: Colors.white))
                  ],
                ),
              ),
            ),
            const Divider(),
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
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Image.asset("assets/img/IconLivro.png"),
                    ),
                    const Text("Capítulo 2\nMetas Financeiras",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Bree',
                            color: Colors.white))
                  ],
                ),
              ),
            ),
            Divider(),
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
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Image.asset("assets/img/IconLivro.png"),
                    ),
                    const Text("Capítulo 3\nReserva de Emergencia",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Bree',
                            color: Colors.white))
                  ],
                ),
              ),
            ),
            Divider(),
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
                  color: Colors.red,
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
