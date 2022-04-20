import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 80,
          color: Colors.red,
          child: const Center(
            child: Text('Página One',
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
    );
  }
}
