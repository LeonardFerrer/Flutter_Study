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
**Métodos e atributos importantes:**
- **onPageChanged** pega as alterações no pageview;
- **controller**    controla as páginas;
- **scrollDirection** define o eixo de rolação do scroll;

**referências**
- [PageView com BottomNavigationBar](https://karthikponnam.medium.com/flutter-pageview-withbottomnavigationbar-fb4c87580f6a);
- [PageView class](https://api.flutter.dev/flutter/widgets/PageView-class.html)

## Navegação entre pages
Para navegar entre páginas há algumas opções muito populares:
- **Drawer**
- **BottomNavegationBar**

### Drawer
Um painel de design de material que desliza horizontalmente da borda de um Scaffold para mostrar links de navegação em um aplicativo.

Drawer são normalmente usadas com a propriedade Scaffold.drawer. O filho da gaveta geralmente é um ListView cujo primeiro filho é um DrawerHeader que exibe informações de status sobre o usuário atual. Os filhos de gaveta restantes geralmente são construídos com ListTile s, muitas vezes concluindo com um AboutListTile.

sintaxe do **Drawer**:
```dart
@override
Scaffold{
    appBar: AppBar()
    drawer Drawer(
        child: ListView(
            children: [
                DrawerHeader(),
                ListTile(),
                ListTile(),
                ListTile(),
            ]
        )
    )
}
```
O Drawer pode ser fechado manualmente deslizando a tela para esquerda e usando a função **Navigator.pop**
```dart
@override
ListTile(
    leading: Icon(),        // Icone que fica no inicio
    trealing: Icon(),       // Icone que fica no fim
    title: Text("item 1"),  // Titulo
    subtitle: Text("sub"),  // Subtitulo   
    onTap: (){
        // atualizando estado do app
        Naviation.pop(context);
    }
)
```

**referências**
- [Drawer class](https://api.flutter.dev/flutter/material/Drawer-class.html)
- [Flutter Drawer Full Guide](https://appmaking.com/flutter-drawer-example/)
