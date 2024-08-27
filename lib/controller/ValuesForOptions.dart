import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ValuesForOptions extends GetxController{
  String? option;
  Color color1=Colors.white,
        fontColor=Colors.black,
        color2=Colors.white;
  bool all=false,outDoor=false,
        inDoor=false,officePlants=false;
  setOption(String option){
    this.option=option;
    update();
  }
  setColor(Color color1,Color color2){
    this.color1=color1;
    this.color2=color2;
    update();
  }
  checkOptionsForFontColor(String option){
    if(option=='Outdoor'){
      fontColor=outDoor==true?Colors.white:Colors.black;
      return fontColor;
    }
    else if(option=='Indoor'){
      fontColor=inDoor==true?Colors.white:Colors.black;
      return fontColor;
    }
    else if(option=='Office Plants'){
      fontColor=officePlants==true?Colors.white:Colors.black;
      return fontColor;
    }
    else if(option=='All'){
      fontColor=all==true?Colors.white:Colors.black;
      return fontColor;
    }

  }
  checkOptionsForColorsOfContainer(String option){
    if(option=='Outdoor'){
      return [outDoor==true?color1:Colors.white,outDoor==true?color2:Colors.white];
    }
    else if(option=='Indoor'){
      return [inDoor==true?color1:Colors.white,inDoor==true?color2:Colors.white];
    }
    else if(option=='Office Plants'){
      return [officePlants==true?color1:Colors.white,officePlants==true?color2:Colors.white];
    }
    else if(option=='All'){
      return [all==true?color1:Colors.white,all==true?color2:Colors.white];
    }
  }


}