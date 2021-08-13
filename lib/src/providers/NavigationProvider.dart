import 'package:flutter/material.dart';

class NavigationProvider extends ChangeNotifier {
  int _actualPage = 0;

  int get actualPage => _actualPage;

  set actualPage(int value) {
    _actualPage = value;
    _pageController.animateToPage(
        value,
        duration: Duration(milliseconds: 300), 
        curve: Curves.easeInExpo
    );
    notifyListeners();
  }

  PageController _pageController = PageController();
  PageController get pageController => _pageController;
}
