import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppingcart/view/screens/DetailsForItem.dart';
import 'package:shoppingcart/view/screens/HomePage.dart';
import 'package:shoppingcart/view/widgets/dynamic_spec.dart';
import 'package:shoppingcart/view/widgets/test.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
   //test controller = Get.put(test());
  @override
  Widget build(BuildContext context) {
    //SizeConfig().init(context: context);
    return  GetMaterialApp(debugShowCheckedModeBanner: false, home: HomePage()
    );
  }
}
