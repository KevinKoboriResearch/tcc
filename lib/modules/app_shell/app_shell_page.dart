import 'package:flutter/material.dart';
import 'package:tcc/modules/home/home_page.dart';
// import 'package:tcc/modules/products/product/edit_product/product_edit_page.dart';
import 'package:tcc/modules/products/products_page.dart';
import 'package:tcc/modules/profile/profile_page.dart';
import 'package:tcc/modules/receipts/receipts_page.dart';
import 'package:tcc/modules/settings/settings_page.dart';
// import 'package:tcc/modules/profile/profile_page.dart';
// import 'package:tcc/modules/receipts/receipts_page.dart';

// import '../login/login_page.dart';

class AppShell extends StatefulWidget {
  @override
  _AppShellState createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  // bool login = false;
  int _screenIndex = 0;
  final List<Widget> _screens = [
    // ReceiptsPage(),
    // ProductsPage(),
    HomePage(),
    ReceiptsPage(),
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
      body: Center(child: _screens[_screenIndex]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // iconSize: 18,
        backgroundColor: Colors.pink[300],
        // fixedColor: Colors.white,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[800],
        currentIndex: _screenIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            // backgroundColor:  Colors.pink[300],
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_rounded),
            label: "Receipts",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_rounded),
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
      _screenIndex = index;
    });
  }
}
