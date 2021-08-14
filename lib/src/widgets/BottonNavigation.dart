import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:news_project/src/providers/providers.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);
    
    return BottomNavigationBar(
        currentIndex: navigationProvider.actualPage,
        onTap: (index) => navigationProvider.actualPage = index,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin_circle_outlined), label: 'Para Ti'),
          BottomNavigationBarItem(
              icon: Icon(Icons.public_outlined), label: 'Hot'),
        ]);
  }
}
