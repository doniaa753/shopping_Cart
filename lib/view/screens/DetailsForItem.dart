import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shoppingcart/view/screens/HomePage.dart';
import 'package:shoppingcart/view/widgets/CustomeText.dart';
import 'package:shoppingcart/view/widgets/dynamic_spec.dart';

class ShoppingCartDetailsForItem extends StatelessWidget {

   ShoppingCartDetailsForItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: InkWell(
              onTap: (){
                Get.to(()=> HomePage());
              },
              child: const Icon(Icons.arrow_back)),),
          body: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/tree.png'), fit: BoxFit.fill),
                ),
              ),
              Positioned(
                right: 20,
                  left:20,
                  top:150,
                  child:
                  Image.asset('assets/Rectangle.png',)
              ),

              Positioned(
                top: 510,
                right:20,
                left: 30,
                child: Container(
                  width:320,
                  height: 130,
                  decoration:
                   ShapeDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [Color(0xFF202E25), Color(0x00757575)],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child:
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/faza.png'),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Padding(
                            padding:  EdgeInsets.only(
                                top: 20,
                                left: 5),
                            child: ShoppingCartCustomeText(text: 'Small House Plant', textAlign: TextAlign.center, fontSize: 18, fontWeight: FontWeight.w600, color:  Colors.white),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: 10),
                            child: ShoppingCartCustomeText(
                                text: 'Small plants,',
                                textAlign: TextAlign.start, fontSize: 10, fontWeight: FontWeight.w500, color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
