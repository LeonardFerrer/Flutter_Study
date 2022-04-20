import 'package:flutter/material.dart';

class TwoPage extends StatelessWidget {
  const TwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Center(
        child: Text(
          "Página Two",
          style: TextStyle(color: Colors.white, fontSize: 35),
        ),
      ),
    );
  }
}
