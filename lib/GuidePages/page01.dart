import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:my_coin2/QuizPages/quiz01.dart';

class GuidePage01 extends StatefulWidget {
  const GuidePage01({Key? key}) : super(key: key);

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
          'Orçamento Doméstico',
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
                  'Capítulo 1',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Bree',
                    fontSize: 30,
                  ),
                ),
              ),
              const Text(
                'Entender as receitas e despesas é crucial para a saúde financeira. A receita é todo tipo de dinheiro recebido em troca de produtos ou serviços. Isso pode incluir salário, rendimento de aplicações financeiras, aluguel recebido, entre outros. É essencial monitorar as receitas para entender o fluxo de dinheiro e planejar adequadamente.\n\n'
                'As despesas, por outro lado, são os pagamentos necessários para manter o patrimônio ou atividade. Elas podem ser fixas, como aluguel e contas de serviços, que são previsíveis e ocorrem regularmente. Ou podem ser variáveis, como alimentação e transporte, que oscilam conforme o consumo e podem ser ajustadas conforme necessário.\n\n'
                'Controlar as despesas é fundamental para garantir que os gastos não superem os ganhos. Isso envolve o rastreamento de todas as despesas, a categorização adequada e a identificação de áreas onde os cortes podem ser feitos. Isso permite poupar e investir para alcançar objetivos financeiros.\n\n'
                'Além disso, entender as receitas e despesas permite criar um orçamento eficaz. Um orçamento ajuda a visualizar o fluxo de dinheiro e a tomar decisões financeiras informadas. Isso pode incluir a definição de metas de poupança, a alocação de dinheiro para investimentos e a preparação para despesas futuras. Com um bom entendimento das receitas e despesas, é possível viver dentro de seus meios, evitar dívidas e construir riqueza ao longo do tempo.',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Libre',
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 45),
              Center(
                child: SizedBox(
                  height: 60,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Quiz01()));
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
