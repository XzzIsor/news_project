import 'package:flutter/material.dart';

import 'package:news_project/src/models/models.dart';
import 'package:news_project/src/theme/ThemeApp.dart';

class TopCard extends StatelessWidget {
  const TopCard({Key? key, required this.notice, required this.index})
      : super(key: key);

  final Article notice;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(bottom: 10),

      child: Row(children: [
        Text('${index + 1}', style: TextStyle(color: myTheme.accentColor),),
        SizedBox(width: 5,),
        Text('${notice.source!.name}'),

      ]),
    );
  }
}
