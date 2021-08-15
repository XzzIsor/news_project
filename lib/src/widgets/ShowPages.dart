import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:news_project/src/pages/pages.dart';
import 'package:news_project/src/providers/providers.dart';

class ShowPages extends StatelessWidget {
  const ShowPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final navigationProvider = Provider.of<NavigationProvider>(context);
    
    return PageView(
      //physics: BouncingScrollPhysics(),
      physics: NeverScrollableScrollPhysics(),
      controller: navigationProvider.pageController,
      children: [Tab1Page(), Tab2Page()],
    );
  }
}
