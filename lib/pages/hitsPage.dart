import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HitsPage extends StatefulWidget {
  const HitsPage({super.key});

  @override
  State<HitsPage> createState() => _HitsPageState();
}

class _HitsPageState extends State<HitsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Hists"),
    );
  }
}