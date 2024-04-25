import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_coin2/pages/calcPage.dart';
import 'package:my_coin2/pages/guidePage.dart';
import 'package:my_coin2/pages/searchPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  PageController pc = PageController(
    initialPage: 0,
  );

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
        controller: pc,
        children: const [
          GuidePage(),
          CalcPage(),
          SearchPage()
        ],      
      ),
    );
  }
}