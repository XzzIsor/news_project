import 'package:flutter/material.dart';
import 'package:news_project/src/models/models.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({Key? key, required this.notice}) : super(key: key);

  final Article notice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), topRight: Radius.circular(25), bottomRight: Radius.circular(25)),
        child: Container(
          child: FadeInImage(
            placeholder: AssetImage('assets/news-loading.gif'), 
            image: NetworkImage(notice.urlToImage ?? 'https://www.freeiconspng.com/thumbs/no-image-icon/no-image-icon-6.png'),
          ),
        ),
      ),
    );
  }
}
