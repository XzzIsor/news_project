import 'package:flutter/material.dart';

import 'package:news_project/src/services/NewsService.dart';
import 'package:news_project/src/widgets/widgets.dart';
import 'package:provider/provider.dart';

class Tab1Page extends StatelessWidget {
  const Tab1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final headlines = Provider.of<NewsService>(context).headlines;

    return Scaffold(

      body: NewsList(news: headlines),
      

    );
  }
}
