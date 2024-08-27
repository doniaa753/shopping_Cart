import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoppingcart/view/widgets/dynamic_spec.dart';

import 'CustomeText.dart';

class ShoppingCartCustomeHeader extends StatelessWidget {
  const ShoppingCartCustomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left:21),
            child: ShoppingCartCustomeText(text: 'PlantsCo.',textAlign:TextAlign.right,
              fontSize:22,fontWeight: FontWeight.w600, color: Colors.black, ),
          ),
          Padding(
            padding:  EdgeInsets.only(right:21),
            child: SvgPicture.asset(
              'assets/fi-rr-shopping-bag.svg',
              width: 24,
              height: 24,
            ),
          )
        ],
      );
  }
}
