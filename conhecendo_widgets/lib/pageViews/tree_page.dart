import 'package:flutter/material.dart';

class TreePage extends StatelessWidget {
  const TreePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blueAccent,
        child: const Center(
          child: Text("Página Tree",
              style: TextStyle(color: Colors.white, fontSize: 35)),
        ));
  }
}
