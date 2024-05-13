import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class GuidePage01 extends StatefulWidget {
  const GuidePage01({super.key});

  @override
  State<GuidePage01> createState() => _GuidePage01State();
}

class _GuidePage01State extends State<GuidePage01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text(
          'Gastos e Ganhos',
          style: TextStyle(fontFamily: 'Bree', color: Colors.white),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.red,
        padding: const EdgeInsets.all(16),
        child: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Text(
                  'Capítulo 1',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Bree',
                    fontSize: 30,
                  ),
                ),
              ),
              Text(
                'Entender seus gastos e ganhos é fundamental para uma saúde financeira sólida. Isso envolve saber exatamente quanto dinheiro está entrando em sua conta bancária, considerando todas as fontes de renda. Além disso, é essencial compreender onde seu dinheiro está sendo gasto, monitorando e categorizando cuidadosamente suas despesas.\n\nAo ter uma visão clara de seus gastos e ganhos, você pode tomar decisões financeiras mais conscientes e informadas. Isso pode incluir cortar gastos desnecessários, criar um fundo de emergência ou aumentar seus investimentos. A educação financeira capacita você a tomar o controle de suas finanças e trabalhar em direção aos seus objetivos financeiros.\n\nEm última análise, entender seus gastos e ganhos não é apenas sobre números, mas também sobre cultivar uma mentalidade financeira saudável. Ao adotar práticas de gestão financeira responsável, você constrói as bases para uma vida de estabilidade e prosperidade financeira, garantindo um futuro financeiramente estável para si mesmo.',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Libre',
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 45), // removido a vírgula aqui
              Center(
                child: SizedBox(
                  height: 60,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: null,
                    child: Text(
                      "Quiz",
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
      ),
    );
  }
}
