import 'package:design_challenges/nutrition/detail/widgets/title_section.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Price extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleSection(title: 'Price'),
        RichText(
          text: TextSpan(
            text: r'$ ',
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xFFEB5757),
              ),
            ),
            children: [
              TextSpan(
                text: '3,50',
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
