import 'package:flutter/material.dart';

class TwoPage extends StatelessWidget {
  const TwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // o !, garanti que existe um dados a ser recebido;
    // "as String", define o tipo do dado que será recebido
    var args = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(),
      body: Center(
          child: ElevatedButton(
              child: Text("Para Page One, $args"),
              onPressed: () {
                if (Navigator.of(context).canPop()) {
                  Navigator.of(context).pop("Reorno");
                }
              })),
    );
  }
}
