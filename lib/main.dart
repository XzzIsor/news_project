import 'package:flutter/material.dart';

import 'package:news_project/src/screens/TabsScreen.dart';
import 'package:news_project/src/services/NewsService.dart';
import 'package:news_project/src/theme/ThemeApp.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NewsService()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: myTheme,
        title: 'Material App', 
        home: TabsScreen()
      ),
    );
  }
}
