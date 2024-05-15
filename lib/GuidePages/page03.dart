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
          'Reserva de Emergência',
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
                'Em nosso aplicativo de educação financeira, enfatizamos a importância de criar uma reserva financeira como parte fundamental de uma gestão financeira saudável. Recomendamos estabelecer uma meta inicial de economizar de três a seis meses de despesas essenciais, como moradia e alimentação, como colchão de segurança contra imprevistos. O aplicativo ajuda a calcular esse valor e define um plano de economia realista para alcançá-lo gradualmente.\n\nAutomatizar suas economias é essencial para garantir o crescimento consistente da sua reserva financeira. Configure transferências automáticas para direcionar parte de sua receita para essa finalidade assim que receber seu salário ou renda. Isso garante uma abordagem disciplinada e constante para a construção de sua reserva, mesmo diante de tentações de gastos.\n\nAlém disso, nosso aplicativo oferece insights sobre otimização de despesas e planejamento financeiro. Por meio de ferramentas de análise de gastos, você pode identificar áreas onde cortar despesas desnecessárias e redirecionar esses recursos para sua reserva financeira. Assim, você pode construir gradualmente um fundo de emergência que proporciona segurança e liberdade financeira, preparando-o para enfrentar qualquer imprevisto com confiança e tranquilidade.',
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
                          builder: (context) => const Quiz03(),
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
