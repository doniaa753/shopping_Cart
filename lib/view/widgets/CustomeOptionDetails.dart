import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shoppingcart/controller/ValuesForOptions.dart';
import 'package:shoppingcart/view/screens/DetailsForItem.dart';
import 'package:shoppingcart/view/widgets/dynamic_spec.dart';

import 'CustomeText.dart';

class ShoppingCartOptionDetails extends StatelessWidget {
  ShoppingCartOptionDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(
          left:20,
          right:20),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      // scrollDirection: Axis.vertical,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // number of items in each row
        mainAxisSpacing: 10, // spacing between rows
        crossAxisSpacing: 3, // spacing between Columns
      ),
      // padding around the grid
      //Number Of Items In GridView
      itemCount: 6,
      // total number of items
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Get.to(() => ShoppingCartDetailsForItem());
          },
          child: Stack(
            children: [
              //Container Of Photos Of Items
              Container(
                width: 159.43,
                height:220,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/item1.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                  top:95,
                  child: Stack(
                    children: [
                      Stack(
                        children: [
                          //For Bottom Image1
                          SvgPicture.asset(
                            'assets/Vector 3.svg',
                            fit: BoxFit.fitHeight,
                          ),
                          //For Bottom Image2
                          Positioned(
                            top: 9,
                            child: SvgPicture.asset(
                              'assets/Vector 3.svg',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          //Details For Item
                          Positioned(
                              top: 20,
                              left: 10,
                              right: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GetBuilder<ValuesForOptions>(
                                    builder: (controller) {
                                      return ShoppingCartCustomeText(
                                        color: Colors.white,
                                        text: 'Small Potted Plant ${controller.option??''}',
                                        fontWeight: FontWeight.w600,
                                        textAlign: TextAlign.left,
                                        fontSize: 12,
                                      );
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      //Salary For Item
                                      ShoppingCartCustomeText(
                                        color: Colors.white,
                                        text: '\$20',
                                        fontWeight: FontWeight.w500,
                                        textAlign: TextAlign.left,
                                        fontSize: 12,
                                      ),

                                      //Arrow Icon
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                        size: 15,
                                        weight: 500,
                                      )
                                    ],
                                  )
                                ],
                              )),
                        ],
                      )
                    ],
                  )),
            ],
          ),
        );
      },
    );
  }
}
