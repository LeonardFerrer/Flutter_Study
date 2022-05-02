# navegacao_entre_paginas

Nesse projeto será abordado navegação entre páginas, bem como, o transporte de dados entre elas:

Para iniciamos, imagine que temos duas pages:
- OnePage();
- TwoPage();

```dart
// OnePage()

Scaffold(
    body: Center(
        child: ElevatedButton(
            child: Text("Ir para Segunda Page"),
            onPressed: () {},
        ),
    ),
);
```

```dart
// TwoPage()

Scaffold(
    body: Center(
        child: ElevatedButton(
            child: Text("Voltar para Primeira Page"),
            onPressed: () {},
        ),
    ),
);
```
## Navegação

Imagine que estamos na **OnePage()** e queremos ir para **TwoPage()**, para isso usaremos o push:
```dart
// OnePage()

ElevatedButton(
    child: Text("Ir para Segunda Page"),
    onPressed: () {
        // Use o push para empilhar a TwoPage()
        Navigator.of(context).push(
            MaterialPageRoute(
                  builder: (context) => const TwoPage
            )
        );
    },
),
```

Agora estamos na **TwoPage()** e queremos retorna para a **OnePage()**, para isso iremos retirar a page atual da pilha com o **.pop()**:
```dart
// TwoPage()

ElevatedButton(
    child: Text("Voltar para Primeira Page"),
    onPressed: () {
        Navigator.of(context).pop();
    },
),
```
### Transferindo dados enter Pages

Para isso podemos passar os dados através do construtor:
```dart
// TwoPage()
class TwoPage extends StatelessWidget {
  final String args;            // Varia a ser recebida da page anterior
  const TwoPage({Key? key, required this.args}) : super(key: key);  // Construtor

  @override
  Widget build(BuildContext context){
        // ...
  }
}
```

Na **OnePage()**, instanciamos a **TwoPage()** com os dados a serem transmitidos:
```dart
Navigator.of(context).push(
    MaterialPageRoute(
        builder: (context) => const TwoPage(args: "dados");
    )
);
```

## Navegação com rotas nomeadas
Esse tipo de navegação é bem popular e já alinha com a navegação WEB. Para usarmos ela, primeiro definimos as rotas na main.
```dart
//Main.dart
MaterialApp(
    title: ,            // Titulo do App
    theme: ,            // Tema da aplicação
    initialRoute: ,     // Rota inicial
    routes:             // Aqui definimos todas as rotas da aplicação
)
```

Note que não há o argumento **home:**, isso porque ao usar rotas nomeadas o substituimos pelo argumento **initialRoute:**. Outro ponto será a definição de nossas rotas no **routes:**:
```dart
//Main.dart
MaterialApp(
    routes: {
        '/' : (_) => OnePage(),
        '/TwoPage' : (_) => TwoPage(),
    }
)
```

As rotas são um conjuto de mapas, sendo a raiz o ``` '/' ```, e as demais páginas partem dessa raiz.

Na página **OnePage()**, para ir para a **TwoPage()** usamos o ``` pushName() ```:
```dart
// OnePage()

ElevatedButton(
    child: Text("Ir para Segunda Page"),
    onPressed: () {
        // Use o push para empilhar a TwoPage()
        Navigator.of(context).pushName('/TwoPage');
    },
),
```
Para retorna a página anterior basta usar o ``` .pop() ```:
```dart
// TwoPage()

ElevatedButton(
    child: Text("Voltar para Primeira Page"),
    onPressed: () {
        Navigator.of(context).pop();
    },
),
```


### Passando dados entre páginas

A navegação entre páginas usa ``` Navigator.of(context).pushName() ``` com as rotas, esse método possui um argumento denominado **arguments**:
```dart
// OnePage()

ElevatedButton(
    child: Text("Ir para Segunda Page"),
    onPressed: () {
        // Use o push para empilhar a TwoPage()
        Navigator.of(context).pushName('/TwoPage', arguments: "Teste" );
    },
),
```

Para recuperar os dados na **TwoPage()**, use:
```dart
// TwoPage()
@override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold( 
        //...
    );
  }
```

### Retornando um valor da TwoPage()

Na Página **OnePage()** aguardando o retorno da finalização da page **TwoPage()** com ``` .then() ```:
```dart
// OnePage()

ElevatedButton(
    child: Text("Ir para Segunda Page"),
    onPressed: () {
        // Use o push para empilhar a TwoPage()
        Navigator.of(context)
            .pushName('/TwoPage', arguments: "Teste" )
            .then(value) { }; // Aguarda o retorno
    },
),
```

Já na página **TwoPage()**, o método ``` .pop() ``` recebe um object que será transmitido para a página anterior:
```dart
// TwoPage()

ElevatedButton(
    child: Text("Voltar para Primeira Page"),
    onPressed: () {
        Navigator.of(context).pop( "RETORNO" );
    },
),
```

## Referências
- [Navegação entre Pages](https://www.youtube.com/watch?v=mYAKS8zm940&list=PLRpTFz5_57cvo0CHf-AnojOvpznz8YO7S&index=11)
