import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoppingcart/view/widgets/dynamic_spec.dart';

import 'CustomeText.dart';

class ShoppingCartHomeContainer extends StatelessWidget {
  const ShoppingCartHomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        width: 400,
        height:200,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          gradient: const LinearGradient(
            begin: Alignment(-0.94, -0.33),
            end: Alignment(0.94, 0.33),
            colors: [Color(0xFF0E4123), Color(0xFF94E6AE)],
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding:
                      EdgeInsets.only(
                          left: 25,
                          top: 30),
                      child: ShoppingCartCustomeText(
                        text: '20%',
                        textAlign: TextAlign.left,
                        fontSize: 50,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding:
                      EdgeInsets.only(
                          top: 50,
                          left: 10
                      ),
                      child: ShoppingCartCustomeText(
                        text: 'OFF',
                        textAlign: TextAlign.left,
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:EdgeInsets.only(left:12),
                  child: ShoppingCartCustomeText(
                    color: Colors.white,
                    fontSize: 12,
                    textAlign: TextAlign.left,
                    fontWeight: FontWeight.w400,
                    text: 'on your first purchase',
                  ),
                ),
                Padding(
                  padding:EdgeInsets.only(
                      top: 10,
                      left: 20),
                  child: Container(
                    alignment: Alignment.center,
                    width: 132,
                    height: 28,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          color: Colors.white.withOpacity(0.699999988079071),
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: ShoppingCartCustomeText(
                      color: Colors.white,
                      text: 'Use code: FIRST ORDER',
                      fontSize: 10,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(child: Align(
                alignment: Alignment.centerRight,
                child: Image.asset('assets/Vector 1.png',)),),
          ],
        ),

    );
  }
}
