import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShoppingCartCustomebottomNavigationBar extends StatelessWidget {
  const ShoppingCartCustomebottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return
      BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color(0xff234F30)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_outlined, color: Color(0Xff838383)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark, color: Color(0Xff838383)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Color(0Xff838383)),
            label: 'Home',
          ),
        ],
    );
  }
}
