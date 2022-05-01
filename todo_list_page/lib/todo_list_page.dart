import 'package:flutter/material.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  final TextEditingController _textEditingController = TextEditingController();
  List<String> tarefas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:
          false, // Isso faz com que o teclado sobreponha o Scaffold
      appBar: AppBar(
        title: const Text("Lista de Tarefas"),
      ),
      body: Container(
        // Corpo do App
        padding: const EdgeInsets.all(24), // Espaçamento
        child: Column(
          children: [
            TextFormField(
              // Entrada para campo de texto
              controller: _textEditingController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              textInputAction:
                  TextInputAction.done, // Indica que o formulario finalizou
              // Faz a lógica quando se finalizar o formulario
              onFieldSubmitted: (value) {
                if (_textEditingController.text.isNotEmpty) {
                  // Verificar se o TextField não está vazio
                  setState(() {
                    tarefas.add(_textEditingController
                        .text); // Adiciona uma nova tarefa a lista
                  });
                  _textEditingController.clear(); // Limpa os dados no TextField
                }
              },
            ),
            Container(
                height: 500, // limita o tamanho do ListView
                child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        const Divider(color: Colors.black, height: 20),
                    itemCount: tarefas.length, // Tamanho da lisat de tarefas
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          tarefas[index],
                          style: const TextStyle(fontSize: 20),
                        ),
                        trailing: IconButton(
                            icon: const Icon(Icons.minimize_sharp,
                                color: Colors.red),
                            onPressed: () {
                              setState(() {
                                tarefas.removeAt(index);
                              });
                            }),
                      );
                    })),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
              // Botão para adiconar uma nova tarefa
              tooltip: "add nova tarefa",
              child: const Icon(Icons.add),
              onPressed: () {
                // Callback
                if (_textEditingController.text.isNotEmpty) {
                  // Verificar se o TextField não está vazio
                  setState(() {
                    tarefas.add(_textEditingController
                        .text); // Adiciona uma nova tarefa a lista
                  });
                  _textEditingController.clear(); // Limpa os dados no TextField
                }
              }),
          FloatingActionButton(
              // Botão para adiconar uma nova tarefa
              tooltip: "Resetar as tarefas",
              child: const Icon(Icons.minimize_sharp),
              onPressed: () {
                setState(() {
                  tarefas.clear(); // Reseta a lista de tarefas
                });
              }),
        ],
      ),
    );
  }
}
