import 'package:flutter/material.dart';
import 'package:news_project/src/models/models.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({Key? key, required this.notice}) : super(key: key);

  final Article notice;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Text(notice.title!, style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold),)
    );
  }
}
