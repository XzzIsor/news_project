import 'package:flutter/material.dart';
import 'package:news_project/src/models/models.dart';
import 'package:news_project/src/widgets/widgets.dart';

class News extends StatelessWidget {
  const News({Key? key, required this.notice, required this.index})
      : super(key: key);

  final Article notice;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        TopCard(notice: notice, index: index),
        TitleCard(notice: notice),
        ImageCard(notice: notice),
        BodyCard(notice: notice),
        SizedBox(height: 10,),
        ButtonCard(),
        Divider()
      ],

    );
  }
}
