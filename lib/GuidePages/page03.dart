import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_coin2/QuizPages/quiz03.dart';

class GuidePage03 extends StatefulWidget {
  const GuidePage03({Key? key}) : super(key: key);

  @override
  State<GuidePage03> createState() => _GuidePage03State();
}

class _GuidePage03State extends State<GuidePage03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text(
          'Contas Atrasadas e Gestão',
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
                  'Capítulo 3',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Bree',
                    fontSize: 30,
                  ),
                ),
              ),
              const Text(
                'As despesas podem ser categorizadas em duas principais categorias: fixas e variáveis. As despesas fixas são aquelas que se repetem todo mês com valores previsíveis, como aluguel, plano de saúde, mensalidades escolares e pagamentos de empréstimos. Estas são despesas que geralmente não mudam de mês para mês e são essenciais para o seu bem-estar e sobrevivência.\n\n'
                'Por outro lado, as despesas variáveis oscilam conforme o consumo, como alimentação, transporte, lazer e compras de roupas. Estas são despesas que podem mudar de mês para mês e muitas vezes têm um grau de flexibilidade.\n\n'
                'Controlar as despesas fixas e variáveis é essencial para manter uma vida financeira saudável e atingir metas financeiras. Isso envolve monitorar suas despesas, identificar padrões de gastos e fazer ajustes conforme necessário. Isso pode envolver a redução de despesas desnecessárias, a renegociação de contratos de serviços ou a busca de alternativas mais econômicas.\n\n'
                'Automatizar as economias é uma estratégia eficaz para garantir um crescimento consistente da reserva financeira. Isso pode envolver a configuração de transferências automáticas para uma conta poupança ou investimento, ou o uso de aplicativos que arredondam suas compras para o real mais próximo e investem a diferença. Isso ajuda a se preparar para imprevistos e a construir um futuro financeiro seguro.',
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
                              builder: (context) => const Quiz03()));
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
