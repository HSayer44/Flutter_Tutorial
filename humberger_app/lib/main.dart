import 'package:flutter/material.dart';
import 'header.dart';
import 'categories.dart';
import 'hambergers_list.dart';
import 'burger_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.teal,
        cardColor: Colors.white,
        appBarTheme: const AppBarTheme(color: Colors.teal, centerTitle: true),
        bottomAppBarTheme: BottomAppBarTheme(color: Colors.teal),
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: Colors.orange),
      ),
      home: const Hamberger(),
      routes: {BurgerPage.tag: (_)=>BurgerPage()},
      debugShowCheckedModeBanner: false,
    );
  }
}

class Hamberger extends StatefulWidget {
  const Hamberger({super.key});

  @override
  State<Hamberger> createState() => _HambergerState();
}

class _HambergerState extends State<Hamberger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: const Text('Deliver Me'),
            leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart),
              ),
            ],
          ),
          const Header(),
          Categories(),
          HambergersList(row: 1),
          HambergersList(row: 2),
        ],
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.home,
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(45),
        ),
        child: Container(
          color: Colors.black38,
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Row(
              children: [
                Spacer(),
                IconButton(
                  onPressed: () {},
                  color: Colors.white,
                  icon: Icon(Icons.add_alert),
                ),
                Spacer(),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  color: Colors.white,
                  icon: Icon(Icons.turned_in),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
