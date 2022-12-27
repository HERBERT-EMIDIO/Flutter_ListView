import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _itens = [];
  // ignore: unused_element
  void _carregarItens() {
    _itens = [];
    for (int i = 0; i <= 20; i++) {
      Map<String, dynamic> item = {};
      item['titulo'] = 'Título $i lorem ipsum';
      item['descricao'] = 'Descrição $i lorem ipsum';
      _itens.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    _carregarItens();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista'),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: _itens.length,
          itemBuilder: (context, indice) {
            //Map<String, dynamic> item = _itens[indice];
            //print('item: ${_itens[indice]['titulo']}');
            return ListTile(
              title: Text(_itens[indice]['titulo']),
              subtitle: Text(_itens[indice]['descricao']),
            );
          },
        ),
      ),
    );
  }
}
