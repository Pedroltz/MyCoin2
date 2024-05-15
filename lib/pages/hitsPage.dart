import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HitsPage extends StatefulWidget {
  const HitsPage({Key? key}) : super(key: key);

  @override
  State<HitsPage> createState() => _HitsPageState();
}

class _HitsPageState extends State<HitsPage> {

  final Uri _linkExame = Uri.parse('https://exame.com/');
  final Uri _linkInfoMoney = Uri.parse('https://www.infomoney.com.br/');
  final Uri _linkBancoCentralDoBrasil = Uri.parse('https://www.bcb.gov.br/');

  Future<void> _launchUrl(Uri url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else{
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(13),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Dicas',
                style: TextStyle(
                  fontFamily: 'Bree',
                  fontSize: 30,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, bottom: 5),
                child: Divider(),
              ),
              const Text(
                'Bem-vindo à aba de Dicas do app MyCoin 2.0! Aqui você encontrará uma coleção abrangente de dicas relacionadas a onde você pode aprender mais sobre como administrar seu dinheiro de forma correta e confiável.',
                textAlign: TextAlign.center,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5, bottom: 20),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10, bottom: 10),
                child: ExpansionTile(
                  title: const Text(
                    "Canais do YouTube",
                    style: TextStyle(
                      fontFamily: 'Bree'
                    ),
                  ),
                  children: [
                    Builder(builder: (BuildContext context) {
                      return Container(
                        padding: const EdgeInsets.only(bottom: 18),
                        alignment: Alignment.centerLeft,
                        child: const Text("• Me Poupe!\n• O Primo Rico\n• Dinheiro Com Você"),
                      );
                    })
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10, bottom: 10),
                child: ExpansionTile(
                  title: const Text(
                    "Sites",
                    style: TextStyle(
                      fontFamily: 'Bree'
                    ),
                  ),
                  children: [
                    Builder(builder: (BuildContext context) {
                      return Container(
                        padding: const EdgeInsets.only(bottom: 18),
                        alignment :Alignment.centerLeft,
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ElevatedButton(
                              onPressed: () => _launchUrl(_linkExame),
                              child: const Text(
                                "Exame",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () => _launchUrl(_linkInfoMoney),
                              child: const Text(
                                "InfoMoney",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () => _launchUrl(_linkBancoCentralDoBrasil),
                              child: const Text(
                                "Banco Central do Brasil (BCB)",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),

                      );
                    })
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10, bottom: 10),
                child: ExpansionTile(
                  title: const Text(
                    "Cursos Gratuitos",
                    style: TextStyle(
                      fontFamily: 'Bree'
                    ),
                  ),
                  children: [
                    Builder(builder: (BuildContext context) {
                      return Container(
                        padding: const EdgeInsets.only(bottom: 18),
                        alignment: Alignment.centerLeft,
                        child: const Text("• Curso de Educação Financeira - Finanças para a Vida\n  Disponível em: *VEDUCA*\n\n• Curso de Finanças Pessoais e Investimentos\n  Disponível em: UNESP Aberta\n\n• Curso de Educação Financeira - Controle e Planejamento de Gastos\n  Disponível em: SEBRAE"),
                      );
                    })
                  ],
                ),
              ),
            ],
          ) ,
        ),
      ),
    );
  }
}