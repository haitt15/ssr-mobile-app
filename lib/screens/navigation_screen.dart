import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:ssrapp/screens/navigation_icon.dart';
class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> with TickerProviderStateMixin<NavigationScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: IndexedStack(
          index: _currentIndex,
          children: allNavigationBar.map<Widget>((NavigationIcon navigationicon) {
            return NavigationIconScreen(navigationicon: navigationicon);
          }).toList(),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 52,
        child: BottomNavigationBar(
          items: allNavigationBar.map((NavigationIcon navigationicon) {
            return BottomNavigationBarItem(
              icon: Icon(navigationicon.icon),
              title: Text(navigationicon.title)
            );
          }).toList(),
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          unselectedItemColor: Colors.grey,
          selectedItemColor: Color.fromRGBO(255, 156, 24, 1),
          iconSize:22,
        ),

      ),
    );
  }
}