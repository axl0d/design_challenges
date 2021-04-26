import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const chips = ['vitamin A', 'vitamin C', 'vitamin K'];

class Vitamins extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (final chip in chips)
            Chip(
              backgroundColor: Colors.white,
              label: Text(
                chip,
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              labelPadding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
            ),
        ],
      ),
    );
  }
}
