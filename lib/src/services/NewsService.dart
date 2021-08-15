import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

import 'package:news_project/src/models/models.dart';

class NewsService extends ChangeNotifier {
  final _URLNEWS = 'https://newsapi.org/v2';
  final _API_KEY = 'da28d88992d94110832e582b804c5f54';

  String _selectedCategory = 'business';

  Map<String, List<Article>> categoryArticles = {};

  List<Article> headlines = [];

  List<Category> categories = [
    Category(icon: FontAwesomeIcons.building, name: 'business'),
    Category(icon: FontAwesomeIcons.video, name: 'entertainment'),
    Category(icon: FontAwesomeIcons.addressCard, name: 'general'),
    Category(icon: FontAwesomeIcons.hospitalAlt, name: 'health'),
    Category(icon: FontAwesomeIcons.bacteria, name: 'science'),
    Category(icon: FontAwesomeIcons.basketballBall, name: 'sports'),
    Category(icon: FontAwesomeIcons.bitcoin, name: 'technology'),
  ];

  NewsService() {
    _getTopHeadlines();

    categories.forEach((element) {
      categoryArticles[element.name] = [];
    });
  }

  String get selectedCategory => _selectedCategory;

  set selectedCategory(String value) {
    _selectedCategory = value;
    _getArticlesByCategory();
    notifyListeners();
  }

  List<Article> get getArticlesBySelectedCategory =>
      categoryArticles[_selectedCategory]!;

  _getArticlesByCategory() async {
    if (categoryArticles[_selectedCategory]!.length > 0) {
      return categoryArticles[_selectedCategory];
    }

    final url =
        '$_URLNEWS/top-headlines?apiKey=$_API_KEY&country=co&category=$_selectedCategory';
    final resp = await http.get(Uri.parse(url));

    final newsResp = NewsResp.fromJson(resp.body);

    categoryArticles[_selectedCategory]!.addAll(newsResp.articles!);
    notifyListeners();
  }

  _getTopHeadlines() async {
    final url = '$_URLNEWS/top-headlines?apiKey=$_API_KEY&country=co';
    final resp = await http.get(Uri.parse(url));

    final newsResp = NewsResp.fromJson(resp.body);

    headlines.addAll(newsResp.articles ?? []);
    notifyListeners();
  }
}
