import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.04,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.only(
        top: 20,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          icon: Image.asset(
            'assets/nutrition/search.png',
            height: 16,
            width: 16,
          ),
          labelText: 'Find for Nutrisi',
          contentPadding: EdgeInsets.zero,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
