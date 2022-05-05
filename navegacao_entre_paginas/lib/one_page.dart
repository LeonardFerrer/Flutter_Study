import 'package:flutter/material.dart';
import 'package:navegacao_entre_paginas/widgets/custom_button_widget.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
            child: const Text("Para Page Two"),
            onPressed: () {
              Navigator.of(context)
                  .pushNamed('/TwoPage', arguments: "Teste")
                  .then((value) => print(value));
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const TwoPage()));
            }),
        const SizedBox(
          height: 20,
        ),
        // Botão custumizado
        CustomButoonWidget(
          onPressed: () {},
          title: 'botão cutumizado',
          textSize: 18,
        ),
      ],
    ));
  }
}
