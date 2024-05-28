import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'payPage.dart';

class CalcPage extends StatefulWidget {
  const CalcPage({super.key});

  @override
  State<CalcPage> createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AddItemScreen(),
    );
  }
}

class Item {
  String nome;
  double valor;

  Item({required this.nome, required this.valor});
}

class AddItemScreen extends StatefulWidget {
  const AddItemScreen({super.key});

  @override
  State<AddItemScreen> createState() => _AddItemScreenState();
}

class _AddItemScreenState extends State<AddItemScreen> {
  TextEditingController nomeItemController = TextEditingController();
  TextEditingController valorItemController = TextEditingController();
  double valorTotal = 0;

  List<Item> itemList = [];

  void addItem() {
    String nomeItem = nomeItemController.text.trim();
    String valorText = valorItemController.text.replaceAll(',', '.').trim();
    double? valorItem = double.tryParse(valorText);

    if (nomeItem.isEmpty || valorItem == null || valorItem <= 0) {
      // Exibir mensagem de erro
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Nome do item ou valor inválido.'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    Item novoItem = Item(nome: nomeItem, valor: valorItem);
    valorTotal = valorTotal + novoItem.valor;
    setState(() {
      itemList.add(novoItem);
    });

    // Limpar campos após adicionar o item
    nomeItemController.clear();
    valorItemController.clear();
  }

  void deleteItem(int index) {
    setState(() {
      valorTotal -= itemList[index].valor;
      itemList.removeAt(index);
    });
  }

  void editItem(int index, String newNome, double newValor) {
    setState(() {
      valorTotal = valorTotal - itemList[index].valor + newValor;
      itemList[index].nome = newNome;
      itemList[index].valor = newValor;
    });
  }

  void goToPaymentScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PaymentScreen(),
        settings: RouteSettings(arguments: itemList),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.red,
                      size: 32,
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      'Meu Carrinho',
                      style: TextStyle(
                        fontSize: 32,
                        fontFamily: 'Bree',
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                TextField(
                  controller: nomeItemController,
                  decoration: InputDecoration(
                    labelText: 'Nome do Item',
                    labelStyle: TextStyle(color: Colors.red),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                  cursorColor: Colors.red,
                ),
                const SizedBox(height: 16.0),
                TextField(
                  controller: valorItemController,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                    labelText: 'Valor (R\$)',
                    labelStyle: TextStyle(color: Colors.red),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                  cursorColor: Colors.red,
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: addItem,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, // background color
                  ),
                  child: const Text(
                    'Adicionar item',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Bree',
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                ElevatedButton(
                  onPressed: goToPaymentScreen,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, // background color
                  ),
                  child: const Text(
                    'Efetuar Pagamento',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Bree',
                    ),
                  ),
                ),
              ],
            ),
          ),
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
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () => deleteItem(index),
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        TextEditingController _nomeItemController = TextEditingController(text: itemList[index].nome);
                        TextEditingController _valorItemController = TextEditingController(text: itemList[index].valor.toString().replaceAll('.', ','));

                        return AlertDialog(
                          title: const Text('Editar Item'),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextField(
                                controller: _nomeItemController,
                                decoration: InputDecoration(
                                  labelText: 'Nome do Item',
                                  labelStyle: TextStyle(color: Colors.red),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red),
                                  ),
                                ),
                                cursorColor: Colors.red,
                              ),
                              const SizedBox(height: 16),
                              TextField(
                                controller: _valorItemController,
                                keyboardType: TextInputType.numberWithOptions(decimal: true),
                                decoration: InputDecoration(
                                  labelText: 'Valor (R\$)',
                                  labelStyle: TextStyle(color: Colors.red),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red),
                                  ),
                                ),
                                cursorColor: Colors.red,
                              ),
                            ],
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text(
                                'Cancelar',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                String newNome = _nomeItemController.text.trim();
                                String newValorText = _valorItemController.text.replaceAll(',', '.').trim();
                                double? newValor = double.tryParse(newValorText);

                                if (newNome.isEmpty || newValor == null || newValor <= 0) {
                                  // Exibir mensagem de erro
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('Nome do item ou valor inválido.'),
                                      backgroundColor: Colors.red,
                                    ),
                                  );
                                  return;
                                }

                                editItem(index, newNome, newValor);
                                Navigator.of(context).pop();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red, // background color
                              ),
                              child: const Text(
                                'Salvar',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
