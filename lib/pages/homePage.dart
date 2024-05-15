import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_coin2/pages/calcPage.dart';
import 'package:my_coin2/pages/guidePage.dart';
import 'package:my_coin2/pages/hitsPage.dart';
import 'package:my_coin2/pages/infoPage.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Variável para controlar a página atual exibida
  int paginaAtual = 0;
  late PageController pc;

  @override
  void initState() {
    super.initState();
    // Inicializa o controlador da página com a página atual
    pc = PageController(initialPage: paginaAtual);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          "assets/img/MyCoinPNG.png",
          width: 120,
        ),
        backgroundColor: Colors.red,
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pc,
        children: const [  
          GuidePage(),
          CalcPage(),
          HitsPage(),
          InfoPage()
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 73,
        child: GNav(
          backgroundColor: Colors.red,
          tabBackgroundColor: Color.fromARGB(255, 248, 93, 82),
          activeColor: Colors.white,
          padding: EdgeInsets.all(16),
          color: Color.fromARGB(255, 119, 0, 0),
          gap: 8,
          tabs: [
            GButton(
              icon: Icons.book,
              text: 'Guia',
              onPressed: () {
                setState(() {
                  paginaAtual = 0;
                  pc.animateToPage(paginaAtual, duration: const Duration(milliseconds: 200), curve: Curves.linear);
                });
              },
            ),
            GButton(
              icon: Icons.calculate,
              text: 'Calculadora',
              onPressed: () {
                setState(() {
                  paginaAtual = 1;
                  pc.animateToPage(paginaAtual, duration: const Duration(milliseconds: 200), curve: Curves.linear);
                });
              },
            ),
            GButton(
              icon: Icons.lightbulb,
              text: 'Dicas',
              onPressed: () {
                setState(() {
                  paginaAtual = 2;
                  pc.animateToPage(paginaAtual, duration: const Duration(milliseconds: 200), curve: Curves.linear);
                });
              },
            ),
            GButton(
              icon: Icons.info,
              text: 'info',
              onPressed: () {
                setState(() {
                  paginaAtual = 3;
                  pc.animateToPage(paginaAtual, duration: const Duration(milliseconds: 200), curve: Curves.linear);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}