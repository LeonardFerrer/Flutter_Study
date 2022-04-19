import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 80,
            color: Colors.red,
            child: const Center(
              child: Text('Ola mundo',
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
            ),
          ),
          const SizedBox(height: 10), //Cria um espaçamento na coluna
          Row(
            // Cria uma linha de widgets
            mainAxisAlignment:
                MainAxisAlignment.center, //Centralizar o container ao centro
            children: [
              Container(
                height: 80, // Altura
                width: 80, // Largura
                color: Colors.green, // Cor do Container
              ),
              const SizedBox(width: 10), // Cria um espaço na linha
              Container(
                height: 80, // Altura
                width: 80, // Largura
                color: Colors.orangeAccent, // Cor do Container
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // Barra de navegação
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Minha Conta"),
          BottomNavigationBarItem(
              icon: Icon(Icons.airplanemode_on), label: "aviao"),
        ],
      ),
    );
  }
}
