import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:my_coin2/QuizPages/quiz02.dart';

class GuidePage02 extends StatefulWidget {
  const GuidePage02({Key? key}) : super(key: key);

  @override
  State<GuidePage02> createState() => _GuidePage02State();
}

class _GuidePage02State extends State<GuidePage02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text(
          'Metas Financeiras',
          style: TextStyle(fontFamily: 'Bree', color: Colors.white),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.red,
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Text(
                  'Capítulo 2',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Bree',
                    fontSize: 30,
                  ),
                ),
              ),
              const Text(
                'Estabelecer metas financeiras é fundamental para uma gestão eficaz de suas finanças pessoais. Em nosso aplicativo de educação financeira, incentivamos a definição de metas de curto, médio e longo prazo, adaptadas às suas necessidades individuais. As metas de curto prazo, alcançáveis em até um ano, incluem a criação de um fundo de emergência ou a quitação de dívidas de curto prazo. Oferecemos ferramentas para acompanhar seu progresso e ajustar seu orçamento conforme necessário.\n\nAs metas de médio prazo, que abrangem um período de um a cinco anos, podem envolver objetivos como a compra de um carro novo ou a realização de um curso de especialização. Em nosso aplicativo, você pode estabelecer um plano de economia e investimento para alcançar essas metas de forma realista e eficiente. Por fim, as metas de longo prazo, que ultrapassam cinco anos, representam conquistas significativas, como aposentadoria confortável ou a construção de um patrimônio substancial.\n\nOferecemos recursos de planejamento de longo prazo, como calculadoras de aposentadoria e simuladores de investimento, para ajudá-lo a visualizar e alcançar esses objetivos ao longo do tempo. Ao estabelecer metas financeiras em nosso aplicativo, você desenvolve disciplina financeira, motivação e uma visão estruturada de sua jornada financeira. Acompanhar o progresso em direção a essas metas capacita você a fazer escolhas financeiras mais inteligentes, alinhadas com seus valores e aspirações, transformando seus sonhos financeiros em realidade.',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Libre',
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 45),
              Center(
                child: SizedBox(
                  height: 60,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Quiz02(),
                        ),
                      );
                    },
                    child: const Text(
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
