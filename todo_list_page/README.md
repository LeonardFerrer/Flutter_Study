# todo_list_page

Nesse Projeto visa a criação de uma To-Do list

## ListView
ListView é o widget de rolagem mais usado. Ele exibe seus filhos um após o outro na direção de rolagem. No eixo cruzado, os filhos são obrigados a preencher o ListView .

Usaremos o **ListView** para criar nossa lista de tarefas. Importante para isso defini um tamanho para a visualização, para isso, o envoltemos com um **container** e definimos uma altura.

Existem quatro opções para construir um ListView :

1. O construtor padrão usa um List<Widget> explícito de filhos. Esse construtor é apropriado para exibições de lista com um pequeno número de filhos porque a construção da Lista requer trabalho para cada filho que poderia ser exibido na exibição de lista em vez de apenas para os filhos que estão realmente visíveis.

2. O construtor ListView.builder usa um IndexedWidgetBuilder , que constrói os filhos sob demanda. Esse construtor é apropriado para exibições de lista com um número grande (ou infinito) de filhos porque o construtor é chamado apenas para os filhos que são realmente visíveis.

3.O construtor ListView.separated usa dois IndexedWidgetBuilder s: itemBuildercria itens filhos sob demanda e, de separatorBuilder maneira semelhante, cria filhos separadores que aparecem entre os itens filhos. Esse construtor é apropriado para exibições de lista com um número fixo de filhos.

4. O construtor ListView.custom usa um SliverChildDelegate , que fornece a capacidade de personalizar aspectos adicionais do modelo filho. Por exemplo, um SliverChildDelegate pode controlar o algoritmo usado para estimar o tamanho dos filhos que não são realmente visíveis.


Para esse projeto usaremos o **ListView.separated**:
``` dart
Container(
    hight: 400  
    child: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),               // Separador
        itemCount:              ,   // Tamanho da Lista
        itemBuilder: (context, index) {     // Itens a serem montados
                      return <WIdget>;
                    },
    )
)
```

Para inserir novos itens a lista usaremos um **TextFormField**, com as seguintes configurações:
``` dart
TextFormField(
    controller:         // Adiciona um controller
    decoration:         // Define uma borda para o campo
    textInputAction:    // Define uma ação para o botão do teclado
    onFieldSubmitted:   // Define uma ação quando o formulario for encerrado
),
```

Para exibir os itens na lista de tarefas usei o **ListTile**:
```dart
ListTile(
    title:          // Define um Titulo para o ListTile
    trailing:       // Define um widget a direita
    onLongPress:    // Callback quando o item é pressiona por um longo período
    onTap:          // Callback quando o item é pressionado
)
```

O diferencial para esse ToDo list, foi adicionar um botão a direita do **ListTile** com:
```dart
IconButton(
    icon:       // Define um icone para o botão
    onPressed:  // Callback quando o botão for pressionado
)
```


# Referências:
- [keyboard actions and next focus field](https://medium.com/codechai/flutter-keyboard-actions-and-next-focus-field-3260dc4c694)
- [Desafio: ToDo List](https://www.youtube.com/watch?v=PlB25Z3ma8E&list=PLRpTFz5_57cvo0CHf-AnojOvpznz8YO7S&index=9)
- [A Simple To-Do List App](todo_list_page/lib/todo_list_page.dart)
- [ListView](https://api.flutter.dev/flutter/widgets/ListView-class.html)
- [A visual guide to Input Decorations for Flutter TextField](https://medium.com/flutter-community/a-visual-guide-to-input-decorations-for-flutter-textfield-706cf1877e25)
