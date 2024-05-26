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
                'Regularizar contas atrasadas é um passo essencial para restaurar a estabilidade financeira e evitar repercussões adversas, como danos ao crédito e taxas de atraso. Isso envolve identificar todas as contas que estão em atraso, incluindo empréstimos, contas de serviços públicos, cartões de crédito e outras obrigações financeiras.\n\n'
                'Após levantar as contas pendentes, é crucial entrar em contato com os credores para negociar planos de pagamento flexíveis ou reduções de dívida. Muitos credores estão dispostos a trabalhar com os devedores para encontrar uma solução que seja mutuamente benéfica. Isso pode envolver a extensão do prazo de pagamento, a redução da taxa de juros ou até mesmo a dispensa de algumas taxas.\n\n'
                'Utilizar ferramentas de gerenciamento financeiro e orçamentação pode ajudar a evitar futuras contas em atraso. Isso pode envolver o uso de aplicativos de orçamento, planilhas de despesas ou até mesmo um simples caderno de anotações. O objetivo é monitorar de perto as despesas e garantir que elas não superem as receitas. Isso também envolve a definição de metas realistas de poupança e gastos, e a revisão regular do orçamento para fazer ajustes conforme necessário.\n\n'
                'Um aplicativo de educação financeira pode ser uma excelente ferramenta para manter a saúde financeira em dia. Ele pode oferecer recursos como lembretes de pagamento, ferramentas de rastreamento de despesas, dicas de economia e muito mais. Ao utilizar essas ferramentas, é possível ganhar uma maior compreensão de suas finanças, tomar decisões financeiras mais informadas e, finalmente, alcançar uma maior estabilidade financeira.',
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
                              builder: (context) => const Quiz04()));
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
