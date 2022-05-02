import 'package:flutter/material.dart';
import 'package:navegacao_entre_paginas/one_page.dart';
import 'package:navegacao_entre_paginas/two_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const OnePage(),
      initialRoute: '/',
      routes: {
        '/': (_) => const OnePage(),
        '/TwoPage': (_) => const TwoPage(),
      },
    );
  }
}
