import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:shoppingcart/view/screens/DetailsForItem.dart';
import 'package:shoppingcart/view/widgets/dynamic_spec.dart';

import '../widgets/CustomeBottomNavigationBar.dart';
import '../widgets/CustomeHeader.dart';
import '../widgets/CustomeOptionDetails.dart';
import '../widgets/CustomeOptions.dart';

import '../widgets/HomeContainerWithImage.dart';
import '../widgets/test.dart';

class HomePage extends StatelessWidget {
  final controller = Get.lazyPut(() => test(),fenix: true);
   HomePage({super.key});
  @override
  Widget build(BuildContext context) {
     return
     SafeArea(
      child:
         Scaffold(
          //Customize For bottomNavigationBar
         bottomNavigationBar:  const ShoppingCartCustomebottomNavigationBar(),
          appBar: AppBar(),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                //Header
                const ShoppingCartCustomeHeader(),
                //Detail Header
                const Padding(
                  padding:EdgeInsets.only(
                      top: 31,
                      right:11,
                      left:11),
                  //Home Container With Image
                  child:ShoppingCartHomeContainer(),
                ),
                //Options Header
                 ShoppingCartCustomeOptions(),
                //Option Details
                 ShoppingCartOptionDetails(),
              ],
            ),
          ),
        ),

    );
  }
}
