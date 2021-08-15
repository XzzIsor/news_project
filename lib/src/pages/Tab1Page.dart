import 'package:flutter/material.dart';

import 'package:news_project/src/services/NewsService.dart';
import 'package:news_project/src/theme/ThemeApp.dart';
import 'package:news_project/src/widgets/widgets.dart';
import 'package:provider/provider.dart';

class Tab1Page extends StatefulWidget {
  const Tab1Page({Key? key}) : super(key: key);

  @override
  _Tab1PageState createState() => _Tab1PageState();
}

class _Tab1PageState extends State<Tab1Page> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    final headlines = Provider.of<NewsService>(context).headlines;

    return Scaffold(

      body: headlines.length != 0 
      ? NewsList(news: headlines) 
      : Center(child: CircularProgressIndicator(color: myTheme.accentColor,))
      

    );
  }

  @override
  bool get wantKeepAlive => true;
}
