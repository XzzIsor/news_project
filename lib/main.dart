import 'package:flutter/material.dart';

import 'package:news_project/src/screens/TabsScreen.dart';
import 'package:news_project/src/theme/ThemeApp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      title: 'Material App', 
      home: TabsScreen()
    );
  }
}
