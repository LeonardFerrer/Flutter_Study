# conhecendo_widgets

Esse projeto vissa iniciar os estudos com widgets

## PageView
O widget PageView é um widget que gera páginas roláveis ​​na tela onde podemos ter uma lista fixa de páginas ou uma função de construtor que cria páginas repetidas; este widget age de forma semelhante ao widget ListView no sentido de construir elementos.

O comportamento deste widget é parecido com um carrousel onde pode criar páginas e definir em que direção elas precisam ser roladas.

sintaxe do **PageView**:
```dart
@override
Widget build(BuildContext context){
    final PageController _pageController = PageController();    // Controla a pagina

    return PageView(
        controller: _pageController,
        children: const <Widgets>[ // Guia de páginas, cada wiget será uma page

        ]
    );
}
```
Métodos e atributos importantes:
**onPageChanged** pega as alterações no pageview;
**controller**    controla as páginas;
**scrollDirection** define o eixo de rolação do scroll;

**referências**
[PageView com BottomNavigationBar](https://karthikponnam.medium.com/flutter-pageview-withbottomnavigationbar-fb4c87580f6a);
[PageView class](https://api.flutter.dev/flutter/widgets/PageView-class.html)