import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
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
            Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 252, 115, 115),
                          width: 2),
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                          image: AssetImage("assets/img/Icon.png"),
                          fit: BoxFit.fitHeight)),
                )),
            const Text(
              "Version 0.5.0, build #1",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            const Text(
              "©️ TanderKats, 2024",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Divider(
                height: 1,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10, top: 10, left: 25, right: 25),
              child: Text(
                "O aplicativo My Coin, foi desenvolvido com o principal objetivo de instruir e educar sobre educação finaceira, trazendo conhecimento gratuito e educativo.",                
                textAlign: TextAlign.center,
                style: TextStyle(
                  wordSpacing: -1,
                  fontFamily: '',
                  fontSize: 13,
                  fontWeight: FontWeight.w400
                ),
              ),
            ),
            const Divider(
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: ExpansionTile(
                title: const Text(
                  "Desenvolvedores",
                  style: TextStyle(
                    fontFamily: 'Bree'
                  ),
                ),
                children: [
                  Builder(builder: (BuildContext context) {
                    return Container(
                      padding: const EdgeInsets.all(16),
                      alignment: Alignment.centerLeft,
                      child: const Text("• Pedro Tunin, Caíque Delazari, Augusto Semensato Bortoloti, Luiz Gulherme e Jonathans David da Silva Pinto Junior são programadores em formação que estao desenvolvendo suas habilidade de desenvolvimento mobile com o projeto My Coin 2.0, uma reimaginação do app de mesmo nome."),
                    );
                  })
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: ExpansionTile(
                title: const Text(
                  "Objetivo do Projeto",
                  style: TextStyle(
                    fontFamily: 'Bree'
                  ),
                ),
                children: [
                  Builder(builder: (BuildContext context) {
                    return Container(
                      padding: const EdgeInsets.all(16),
                      alignment: Alignment.centerLeft,
                      child: const Text("• A versão atual do aplicativo foi concebida como uma atualização revitalizada em relação à versão anterior. Ela apresenta melhorias nas funcionalidades e traz novas ferramentas para os usuários."),
                    );
                  })
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: ExpansionTile(
                title: const Text(
                  "Sobre o Curso",
                  style: TextStyle(
                    fontFamily: 'Bree'
                  ),
                ),
                children: [
                  Builder(builder: (BuildContext context) {
                    return Container(
                      padding: const EdgeInsets.all(16),
                      alignment: Alignment.centerLeft,
                      child: const Text("• Desafios, tecnologias e mundo digital: o universo da computação é para pessoas antenadas nesses assuntos. O bacharelado em Ciência da Computação forma profissionais capazes não só de propor soluções de problemas, mas também de inovar e promover a evolução tecnológica da computação e da informática. A formação do estudante vai além da teoria, são utilizados métodos práticos em laboratórios altamente equipados para complementar os fundamentos apresentados em disciplinas, tais como Linguagens de programação, Realidade Virtual e Inteligência Artificial."),
                    );
                  })
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: ExpansionTile(
                title: const Text(
                  "Créditos",
                  style: TextStyle(
                    fontFamily: 'Bree'
                  ),
                ),
                children: [
                  Builder(builder: (BuildContext context) {
                    return Container(
                      padding: const EdgeInsets.all(16),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Projeto idealizado pelo professor Fred de Ciencias Contabeis e auxiliado pelo professor Elvio",
                        textAlign: TextAlign.center,
                      ),
                    );
                  })
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
