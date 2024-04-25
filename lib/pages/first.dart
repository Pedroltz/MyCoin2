import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_coin2/pages/homePage.dart';
import 'package:page_transition/page_transition.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
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
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 20),
                child: Image.asset(
                  "assets/img/FirstImage.png",
                  height: 400,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 15, left: 20, right: 30),
                child: Text(
                  "Conquiste seus sonhos com bons hábitos financeiros",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Bree', fontSize: 20),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 45, left: 20, right: 30),
                child: Text(
                  "Aprena com assuntos do dia a dia sobre gestão financeira pessoal",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 17),
                ),
              ),
              SizedBox(
                height: 60,
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        PageTransition(
                          child: const HomePage(), 
                          type: PageTransitionType.fade,
                        )
                      );
                    },
                    child: const Text(
                      "Começar",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                      ),
                    )),
              )
            ],
          ),
        ));
  }
}
