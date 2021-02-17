import 'package:flutter/material.dart';

import 'setting_page.dart';
import 'home_page.dart';

class PageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PageState();
}

class PageState extends State<PageWidget> {
  final List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: "SETTINGS"),
  ];

  final pages = [HomePage(), SettingsPage()];

  int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Novel Reader"),
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavItems,
        currentIndex: _currentIndex,
        onTap: _changePage,
      ),
    );
  }

  _changePage(int index) {
    if (index != _currentIndex) {
      setState(() {
        _currentIndex = index;
      });
    }
  }
}
