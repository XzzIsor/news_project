import 'package:flutter/material.dart';
import 'package:news_project/src/models/CategoryModel.dart';
import 'package:news_project/src/theme/ThemeApp.dart';
import 'package:provider/provider.dart';

import 'package:news_project/src/services/NewsService.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categories = Provider.of<NewsService>(context).categories;

    return Container(
      width: double.infinity,
      height: 82,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: _CategoryButton(
                category: categories[index],
              ),
            );
          }),
    );
  }
}

class _CategoryButton extends StatelessWidget {
  const _CategoryButton({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    final cateName = category.name;

    final newsService = Provider.of<NewsService>(context);
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            final newsService = Provider.of<NewsService>(context, listen: false);
            newsService.selectedCategory = category.name;
          },
          child: Container(
            margin: EdgeInsets.all(5),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: newsService.selectedCategory == category.name
                    ? myTheme.accentColor
                    : Colors.white),
            child: Icon(category.icon, color: Colors.black54),
          ),
        ),
        Text('${cateName[0].toUpperCase()}${cateName.substring(1)}', 
        style: TextStyle(color: newsService.selectedCategory == category.name? myTheme.accentColor : Colors.white)
        )
      ],
    );
  }
}
