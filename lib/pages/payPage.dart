import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'calcPage.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  TextEditingController reservaController = TextEditingController();
  double saldo = 0;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args == null || args is! List<Item>) {
      return const Scaffold(
        body: Center(
          child: Text('Nenhum item para pagamento.'),
        ),
      );
    }

    List<Item> itemList = args;

    double valorTotal = 0;
    for (var item in itemList) {
      valorTotal += item.valor;
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text(
          'Efetuar Pagamento',
          style: TextStyle(
            fontFamily: 'Bree',
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Itens',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, fontFamily: 'Bree'),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: itemList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(itemList[index].nome),
                    subtitle: Text(
                      'R\$ - ${itemList[index].valor.toStringAsFixed(2)}',
                      style: const TextStyle(color: Colors.red),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: reservaController,
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(
                labelText: 'Reserva (R\$)',
                labelStyle: TextStyle(color: Colors.red),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
              cursorColor: Colors.red,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Substituir a vírgula por ponto antes de converter para double
                String reservaText = reservaController.text.replaceAll(',', '.');
                double reserva = double.tryParse(reservaText) ?? 0;
                double valorItens = valorTotal;
                setState(() {
                  saldo = reserva - valorItens;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Background color
              ),
              child: const Text(
                'Calcular Saldo',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Bree',
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Saldo: R\$ ${saldo.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Libre'),
            ),
          ],
        ),
      ),
    );
  }
}
