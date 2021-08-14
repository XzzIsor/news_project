import 'package:flutter/material.dart';
import 'package:news_project/src/models/models.dart';
import 'package:news_project/src/widgets/News.dart';

class NewsList extends StatelessWidget {
  const NewsList({Key? key, required this.news}) : super(key: key);

  final List<Article> news;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: news.length,
        itemBuilder: (context, index) {
          return News(notice: news[index], index: index);
        });
  }
}
