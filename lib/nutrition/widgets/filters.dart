import 'package:design_challenges/nutrition/models/filter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Filters extends StatelessWidget {
  const Filters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.04,
      margin: const EdgeInsets.only(
        top: 10,
        bottom: 20,
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: MediaQuery.of(context).size.height * 0.04,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: Image.asset('assets/nutrition/filter.png'),
          ),
          for (final f in filters)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              child: Chip(
                label: Text(
                  f.name,
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                backgroundColor: Colors.white,
                avatar: Image.asset('assets/nutrition/${f.image}'),
              ),
            ),
        ],
      ),
    );
  }
}
