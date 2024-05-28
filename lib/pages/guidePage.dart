import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_coin2/GuidePages/page01.dart';
import 'package:my_coin2/GuidePages/page02.dart';
import 'package:my_coin2/GuidePages/page03.dart';
import 'package:my_coin2/GuidePages/page04.dart';

class GuidePage extends StatefulWidget {
  const GuidePage({super.key});

  @override
  State<GuidePage> createState() => _GuidePageState();
}

class _GuidePageState extends State<GuidePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Guia de Educação Financeira',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Bree',
                  fontSize: 20, // Diminui o tamanho da fonte
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              const SizedBox(height: 24),
              _buildGuideCard(
                context,
                title: "Capítulo 1\nReceitas e Despesas",
                page: GuidePage01(),
              ),
              
              const SizedBox(height: 16),
              _buildGuideCard(
                context,
                title: "Capítulo 2\nOrçamento Doméstico",
                page: GuidePage02(),
              ),
              const SizedBox(height: 16),
              _buildGuideCard(
                context,
                title: "Capítulo 3\nGestão e suas Categorias",
                page: GuidePage03(),
              ),
              const SizedBox(height: 16),
              _buildGuideCard(
                context,
                title: "Capítulo 4\nContas Atrasadas",
                page: GuidePage04(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGuideCard(BuildContext context, {required String title, required Widget page}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(12), // Diminui o padding
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 12), // Diminui o padding
              child: Image.asset("assets/img/IconLivro.png", width: 30, height: 30), // Diminui o tamanho do ícone
            ),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16, // Diminui o tamanho da fonte
                  fontFamily: 'Bree',
                  color: Colors.white,
                ),
              ),
            ),
            Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16), // Diminui o tamanho do ícone
          ],
        ),
      ),
    );
  }
}
