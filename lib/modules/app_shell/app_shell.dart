import 'package:flutter/material.dart';
import 'package:tcc/modules/products/product_edit_page.dart';
import 'package:tcc/modules/profile/profile_page.dart';
import 'package:tcc/modules/revenues/revenues_page.dart';

class AppShell extends StatefulWidget {
  @override
  _AppShellState createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  int _indiceAtual = 0;
  final List<Widget> _telas = [
    // RevenuesPage(),
    // ProductsPage(),
    ProductEditPage(),
    ProductEditPage(),
    ProductEditPage(),
    ProductEditPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      // appBar: AppBar(),
      body: Center(child: _telas[_indiceAtual]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "Receitas",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: "Produtos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Configuracoes",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Perfil",
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }
}
