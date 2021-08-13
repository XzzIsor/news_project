import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:news_project/src/widgets/widgets.dart';
import 'package:news_project/src/providers/providers.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NavigationProvider(),
      child: Scaffold(
        body: ShowPages(),
        bottomNavigationBar: BottomNavigation(),
      ),
    );
  }
}


