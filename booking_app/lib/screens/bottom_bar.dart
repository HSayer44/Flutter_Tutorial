import 'package:booking_app/screens/home_screen.dart';
import 'package:booking_app/screens/profile_screen.dart';
import 'package:booking_app/screens/search_screen.dart';
import 'package:booking_app/screens/ticket_screen.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex=0;
  static final List<Widget> _widgetOptions =<Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: _widgetOptions[_selectedIndex]),
        bottomNavigationBar:BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.blueGrey,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(label: 'home',icon: Icon(Icons.home)),
            BottomNavigationBarItem(label:'search',icon: Icon(Icons.search)),
            BottomNavigationBarItem(label:'tickets',icon: Icon(Icons.airplane_ticket)),
            BottomNavigationBarItem(label:'profile',icon: Icon(Icons.person))
        ],
      ),
    );
  }
}
