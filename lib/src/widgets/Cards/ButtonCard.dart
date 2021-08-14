import 'package:flutter/material.dart';
import 'package:news_project/src/theme/ThemeApp.dart';

class ButtonCard extends StatelessWidget {
  const ButtonCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RawMaterialButton(
          onPressed: (){},
          fillColor: myTheme.accentColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Icon(Icons.star_border_outlined),
        ),

        SizedBox(width: 15,),

        RawMaterialButton(
          onPressed: (){},
          fillColor: Colors.deepOrange,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Icon(Icons.more_outlined)
        )
      ],
    );
  }
}
