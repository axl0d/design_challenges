import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      child: Container(
        height: kBottomNavigationBarHeight,
        width: MediaQuery.of(context).size.width - 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (final icon in icons) Image.asset('assets/nutrition/$icon'),
          ],
        ),
      ),
    );
  }
}

const icons = [
  'home.png',
  'chat.png',
  'buy.png',
  'profile.png',
];
