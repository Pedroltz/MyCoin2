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
          'Despesas',
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
                'Orçamento doméstico é um método de planejamento financeiro que analisa todas as receitas e despesas de uma família. O orçamento doméstico permite identificar onde o dinheiro está sendo gasto, o que pode ser cortado e o que é essencial. Isso ajuda a criar uma reserva de emergência e a investir no futuro.\n\n'
                'Definir metas financeiras e controlar as finanças com disciplina são passos cruciais para um orçamento eficaz. Isso permite alcançar objetivos de curto, médio e longo prazo. Além disso, um bom orçamento doméstico pode ajudar a evitar dívidas desnecessárias e a manter um bom histórico de crédito.\n\n'
                'O orçamento doméstico também envolve a compreensão dos riscos financeiros e a criação de um plano para lidar com situações imprevistas. Isso pode incluir a perda de emprego, despesas médicas inesperadas ou reparos domésticos de emergência.\n\n'
                'Finalmente, o orçamento doméstico é uma ferramenta essencial para a educação financeira das crianças. Ao envolver toda a família no processo de orçamento, as crianças podem aprender sobre a importância da poupança, do investimento e do planejamento financeiro desde cedo.',
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
                              builder: (context) => const Quiz02()));
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
