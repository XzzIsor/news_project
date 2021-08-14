import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:news_project/src/models/models.dart';

class NewsService extends ChangeNotifier {
  final _URLNEWS = 'https://newsapi.org/v2';
  final _API_KEY = 'da28d88992d94110832e582b804c5f54';

  List<Article> headlines = [];

  NewsService() {
    getTopHeadlines();
  }

  getTopHeadlines() async {
    final url = '$_URLNEWS/top-headlines?apiKey=$_API_KEY&country=co';
    final resp = await http.get(Uri.parse(url));

    final newsResp = NewsResp.fromJson(resp.body);

    headlines.addAll(newsResp.articles ?? []);
    notifyListeners();
  }
}
