import 'package:flutter/material.dart';

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
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  /// Incrmenta o contador
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  /// Decrementa o contador
  void _decrementCounter() {
    /// setstate faz a atualização da pagina, recebendo uma função anonima como parametro
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Valor atual do contador:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        //Alinha os componentes na coluna no apartir do fim
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              backgroundColor: Colors.green, // Mudar a cor do botão
              onPressed:
                  _incrementCounter, // Passa a função que ele irá executar quando o botão for pressionado
              tooltip: 'Increment', // Informa para o usuario a função do botão
              child: const Icon(Icons.add) // Adicionar um icone de + ao botão
              ),
          const SizedBox(
            // É umwidget vazio, usado comumente para dá espaçamento
            height: 20.0, // Define a altura
          ),
          FloatingActionButton(
            onPressed:
                _decrementCounter, // Passa a função que ele irá executar quando o botão for pressionado
            tooltip: 'Decrement', // Informa para o usuario a função do botão
            child:
                const Icon(Icons.minimize), // Adicionar um icone de - ao botão
          ),
        ],
      ),
    );
  }
}
