import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            child: const Text("Para Page Two"),
            onPressed: () {
              Navigator.of(context)
                  .pushNamed('/TwoPage', arguments: "Teste")
                  .then((value) => print(value));
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const TwoPage()));
            }),
      ),
    );
  }
}
