import 'package:flutter/material.dart';
import 'package:conhecendo_widgets/pageViews/one_page.dart';
import 'package:conhecendo_widgets/pageViews/two_page.dart';
import 'package:conhecendo_widgets/pageViews/tree_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pageController = PageController(initialPage: 0);
  var indexBottomNavigationBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(children: [
          const UserAccountsDrawerHeader(
            // Widget porpulamente usado para usuario
            accountName: Text("Leonardo"), // Nome da conta
            accountEmail: Text("leonardo@gmail.com"), // Email da conta
            currentAccountPicture: CircleAvatar(
              // CircleAvatar cria um circulo para representar um usuario
              backgroundColor: Colors.amber,
              child: Text("L", style: TextStyle(fontSize: 45)),
            ), // Imagem atual da conta
            arrowColor: Colors.white,
          ),
          ListTile(
            // Lista bloco
            title: const Text("Home"), // Titulo
            subtitle: const Text("sub home ..."),
            //trailing: const Icon(Icons.home), // Icone a direita do titulo
            leading: const Icon(Icons.home), // Icone a esquerda do titulo
            onTap: () => {
              // CallBack quando o item é pressionado
              _pageController.jumpToPage(0), // Pula para a página 0
              setState(() => {
                    indexBottomNavigationBar = 0
                  }), // sinalizar a reconstrução da tela com a atualização do indexBottomNavigationBar
              Navigator.pop(context) // Fechar o Drawer
            },
          ),
          ListTile(
            // Lista bloco
            title: const Text("minha conta"), // Titulo
            //trailing: const Icon(Icons.person), // Icone a direita do titulo
            leading: const Icon(Icons.person), // Icone a esquerda do titulo
            onTap: () => {
              // CallBack quando o item é pressionado
              _pageController.jumpToPage(1), // Pula para a página 1
              setState(() => {
                    indexBottomNavigationBar = 1
                  }), // sinalizar a reconstrução da tela com a atualização do indexBottomNavigationBar
              Navigator.pop(context) // Fechar o Drawer
            },
          ),
          ListTile(
            // Lista bloco
            title: const Text("config"), // Titulo
            //trailing: const Icon(Icons.engineering_sharp), // Icone a direita do titulo
            leading: const Icon(Icons.engineering_sharp), // Icone a esquerda
            onTap: () => {
              // CallBack quando o item é pressionado
              _pageController.jumpToPage(2), // Pula para a página 2
              setState(() => {
                    indexBottomNavigationBar = 2
                  }), // sinalizar a reconstrução da tela com a atualização do indexBottomNavigationBar
              Navigator.pop(context) // Fechar o Drawer
            },
          ),
        ]),
      ),
      body: PageView(
        controller: _pageController, // Adiconando um controle para a PageView
        onPageChanged: (index) => {
          // Callback para mudanças no PageView
          setState(() => {indexBottomNavigationBar = index})
        },
        children: const [
          OnePage(), // Página 1
          TwoPage(), // Pagina 2
          TreePage(), // Página 3
        ],
      ),

      // Barra de navegação
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int page) => {
          // Função Chamada quando um item é tocado
          setState(() {
            indexBottomNavigationBar = page;
          }),
          _pageController.animateToPage(page,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut)
        },
        currentIndex: indexBottomNavigationBar
            .toInt(), // Indica qual item da barra está selecionado
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Minha Conta"),
          BottomNavigationBarItem(
              icon: Icon(Icons.engineering_sharp), label: "config"),
        ],
      ),
    );
  }
}
