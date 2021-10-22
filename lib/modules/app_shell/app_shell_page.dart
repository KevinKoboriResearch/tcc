import 'package:flutter/material.dart';
import 'package:tcc/modules/home/home_page.dart';
// import 'package:tcc/modules/products/product/edit_product/product_edit_page.dart';
import 'package:tcc/modules/products/products_page.dart';
import 'package:tcc/modules/profile/profile_page.dart';
import 'package:tcc/modules/revenues/revenues_page.dart';
import 'package:tcc/modules/settings/settings_page.dart';
// import 'package:tcc/modules/profile/profile_page.dart';
// import 'package:tcc/modules/revenues/revenues_page.dart';

// import '../login/login_page.dart';

class AppShell extends StatefulWidget {
  @override
  _AppShellState createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  bool login = false;
  int _indiceAtual = 0;
  final List<Widget> _telas = [
    // RevenuesPage(),
    // ProductsPage(),
    HomePage(),
    RevenuesPage(),
    ProductsPage(),
    SettingsPage(),
    ProfilePage(),
    // ProductEditPage(),
    // ProductEditPage(),
    // Container(), Container(), Container(), Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      // appBar: AppBar(backgroundColor: Colors.pink[300],),
      body: Center(child: _telas[_indiceAtual]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // iconSize: 18,
        backgroundColor: Colors.pink[300],
        // fixedColor: Colors.white,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[800],
        currentIndex: _indiceAtual,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            // backgroundColor:  Colors.pink[300],
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "Revenues",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: "Products",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Config",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
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
