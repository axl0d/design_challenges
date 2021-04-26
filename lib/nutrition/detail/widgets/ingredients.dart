import 'package:flutter/material.dart';

const fruits = ['apple.png', 'kiwi.png', 'orange.png', 'strawberry.png'];

class Ingredients extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (final fruit in fruits)
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.18,
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Image.asset('assets/nutrition/$fruit'),
              ),
            )
        ],
      ),
    );
  }
}
