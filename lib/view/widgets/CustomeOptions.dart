import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shoppingcart/view/widgets/dynamic_spec.dart';
import '../../controller/ValuesForOptions.dart';
import 'Options.dart';

class ShoppingCartCustomeOptions extends StatelessWidget {
  ValuesForOptions controller=Get.put(ValuesForOptions());
  Color color=Colors.white;
  ShoppingCartCustomeOptions({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(
          left: 20,
          top:20,
          right:20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ShoppingCartOptions(option: 'All',),
          ShoppingCartOptions(option: 'Outdoor',),
          ShoppingCartOptions(option: 'Indoor',),
          ShoppingCartOptions(option: 'Office Plants',),
        ],
      ),
    );
  }
}
