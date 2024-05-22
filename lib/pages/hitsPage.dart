import 'package:flutter/material.dart';

class HitsPage extends StatefulWidget {
  const HitsPage({Key? key}) : super(key: key);

  @override
  State<HitsPage> createState() => _HitsPageState();
}

class _HitsPageState extends State<HitsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Dicas',
                style: TextStyle(
                  fontFamily: 'Bree',
                  fontSize: 30,
                  color: Colors.red,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, bottom: 5),
                child: Divider(color: Colors.red),
              ),
              const Text(
                'Bem-vindo à aba de Dicas do app MyCoin 2.0! Aqui você encontrará uma coleção abrangente de dicas relacionadas a onde você pode aprender mais sobre como administrar seu dinheiro de forma correta e confiável.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5, bottom: 20),
                child: Divider(color: Colors.red),
              ),
              _buildTipCard(
                title: "Canais do YouTube",
                icon: Icons.video_library,
                content: "• Me Poupe!\n• O Primo Rico\n• Dinheiro Com Você",
              ),
              _buildTipCard(
                title: "Sites",
                icon: Icons.web,
                content: "• Exame: https://exame.com/\n• InfoMoney: https://www.infomoney.com.br/\n• Banco Central do Brasil (BCB): https://www.bcb.gov.br/",
              ),
              _buildTipCard(
                title: "Cursos Gratuitos",
                icon: Icons.school,
                content: "• Curso de Educação Financeira - Finanças para a Vida\n  Disponível em: VEDUCA\n\n• Curso de Finanças Pessoais e Investimentos\n  Disponível em: UNESP Aberta\n\n• Curso de Educação Financeira - Controle e Planejamento de Gastos\n  Disponível em: SEBRAE",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTipCard({required String title, required IconData icon, String? content}) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: ExpansionTile(
          leading: Icon(icon, color: Colors.red),
          title: Text(
            title,
            style: const TextStyle(
              fontFamily: 'Bree',
              color: Colors.red,
              fontSize: 20,
            ),
          ),
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10),
              alignment: Alignment.centerLeft,
              child: Text(content ?? '', style: const TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: HitsPage(),
  ));
}
