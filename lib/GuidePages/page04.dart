import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:my_coin2/QuizPages/quiz04.dart';

class GuidePage04 extends StatefulWidget {
  const GuidePage04({Key? key});

  @override
  State<GuidePage04> createState() => _GuidePage04State();
}

class _GuidePage04State extends State<GuidePage04> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text(
          'Contas atrasadas',
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
                  'Capítulo 4',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Bree',
                    fontSize: 30,
                  ),
                ),
              ),
              const Text(
                'Regularizar contas atrasadas é essencial para restaurar a estabilidade financeira e evitar repercussões adversas no futuro. Em nosso aplicativo de educação financeira, auxiliamos os usuários a enfrentar esse desafio de frente, começando por um levantamento abrangente das contas pendentes. Com ferramentas de organização e cálculo de dívidas, proporcionamos uma visão clara da situação financeira, permitindo que os usuários priorizem pagamentos e negociem formas de pagamento viáveis com os credores.\n\nNegociar com os credores é o próximo passo crítico. Oferecemos orientações e recursos para facilitar essas negociações, buscando planos de pagamento flexíveis ou até mesmo reduções de dívida. Além disso, incentivamos a criação de um plano de ação para evitar futuras contas em atraso, utilizando ferramentas de gerenciamento financeiro e orçamentação para monitorar despesas, identificar padrões de gastos problemáticos e estabelecer metas realistas para manter as finanças sob controle.\n\nAo enfrentar as contas atrasadas com determinação e estratégia, os usuários do nosso aplicativo não apenas aliviam o estresse financeiro imediato, mas também estabelecem bases sólidas para um futuro financeiro mais seguro. Estamos comprometidos em apoiar cada passo dessa jornada, capacitando os usuários a retomarem o controle de suas finanças e alcançarem seus objetivos financeiros com confiança e assertividade.',
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
                          builder: (context) => const Quiz04(),
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
