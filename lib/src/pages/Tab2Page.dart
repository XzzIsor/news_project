import 'package:flutter/material.dart';
import 'package:news_project/src/services/NewsService.dart';
import 'package:news_project/src/theme/ThemeApp.dart';
import 'package:provider/provider.dart';

import 'package:news_project/src/widgets/widgets.dart';

class Tab2Page extends StatefulWidget {
  const Tab2Page({Key? key}) : super(key: key);

  @override
  _Tab2PageState createState() => _Tab2PageState();
}

class _Tab2PageState extends State<Tab2Page> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    final newsList = Provider.of<NewsService>(context).getArticlesBySelectedCategory;

    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          CategoryList(),
          newsList.length != 0 
          ? Expanded(
            child: NewsList(news: newsList)) 
          : Center(child: CircularProgressIndicator(color: myTheme.accentColor,))
        ],
      )),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
