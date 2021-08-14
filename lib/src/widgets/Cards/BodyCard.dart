import 'package:flutter/material.dart';
import 'package:news_project/src/models/models.dart';

class BodyCard extends StatelessWidget {
  const BodyCard({Key? key, required this.notice}) : super(key: key);

  final Article notice;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Text( notice.description ?? '')
    );
  }
}
