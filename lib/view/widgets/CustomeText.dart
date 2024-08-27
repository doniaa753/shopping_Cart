import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ShoppingCartCustomeText extends StatelessWidget {
  TextAlign textAlign;
  String text;
  double fontSize;
  FontWeight fontWeight;
   Color color=Colors.black;
   ShoppingCartCustomeText({ required this.text,required this.textAlign,
     required this.fontSize,required this.fontWeight,required this.color,
    });
  @override
  Widget build(BuildContext context) {
    return Text(text,textAlign: textAlign,style: TextStyle(fontSize: fontSize,
        fontWeight:fontWeight,color: color,),
      );
  }
}
