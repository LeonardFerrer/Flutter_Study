# conhecendo_widgets

Esse projeto vissa iniciar os estudos com widgets

## PageView
O widget PageView é um widget que gera páginas roláveis ​​na tela onde podemos ter uma lista fixa de páginas ou uma função de construtor que cria páginas repetidas; este widget age de forma semelhante ao widget ListView no sentido de construir elementos.

O comportamento deste widget é parecido com um carrousel onde pode criar páginas e definir em que direção elas precisam ser roladas.

sintaxe do **PageView**:
```dart
@override
Widget build(BuildContext context){
    final PageController pageController = PageController(); // Controla a pagina

    return PageView(
        controller: pageController,
        children: const <Widgets>[ // Guia de páginas, cada wiget será uma page

        ]
    );
}
```