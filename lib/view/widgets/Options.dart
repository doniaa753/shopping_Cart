import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:shoppingcart/controller/ValuesForOptions.dart';

import '../screens/DetailsForItem.dart';
import 'CustomeText.dart';
import 'dynamic_spec.dart';

class ShoppingCartOptions extends StatelessWidget {
   ShoppingCartOptions({super.key,required this.option});
  String option='';
  ValuesForOptions controller=Get.put(ValuesForOptions());
  @override
  Widget build(BuildContext context) {
    return
      InkWell(
      onTap: (){
        controller.setOption(option);
        if(option=='Outdoor'){
          Get.to(()=>ShoppingCartDetailsForItem());
          controller.outDoor=true;
          controller.inDoor=false;
          controller.all=false;
          controller.officePlants=false;
          //controller.checkOptionsForFontColor(option);
        }
        else if(option=='Indoor'){
          controller.inDoor=true;
          controller.outDoor=false;
          controller.all=false;
          controller.officePlants=false;
         // controller.fontColor=(controller.inDoor==true?Colors.white:Colors.black);
        }
        else if(option=='Office Plants'){
          controller.officePlants=true;
          controller.inDoor=false;
          controller.all=false;
          controller.outDoor=false;
         // controller.fontColor=(controller.officePlants==true?Colors.white:Colors.black);
        }
        else if(option=='All'){
          controller.all=true;
          controller.inDoor=false;
          controller.outDoor=false;
          controller.officePlants=false;
         // controller.fontColor=(controller.all==true?Colors.white:Colors.black);
        }
        controller.setColor(const Color(0xFF2B804D), const Color(0xFF73C48F));
      },
      child: GetBuilder<ValuesForOptions>(builder: (controller) {
        return  Container(
          alignment: Alignment.center,
      //    width: getProportionateScreenWidth(inputWidth: 53),
          //height: getProportionateScreenHeight(inputHeight: 36),
          decoration: ShapeDecoration(
            gradient:  LinearGradient(
              begin: const Alignment(-0.96, -0.27),
              end: const Alignment(0.96, 0.27),
              colors: controller.checkOptionsForColorsOfContainer(option),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)),
          ),
          child: ShoppingCartCustomeText(
              text: option,
              textAlign: TextAlign.center,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color:controller.checkOptionsForFontColor(option)),
        );
      },

      ),
    );
  }
}
