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
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) => {
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
              icon: Icon(Icons.airplanemode_on), label: "aviao"),
        ],
      ),
    );
  }
}
