import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Card(
              child: Center(
                child: Text(
                  '-',
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFEB5757),
                    ),
                  ),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
            ),
            width: 30,
            height: 30,
          ),
          Text('1'),
          SizedBox(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
              child: Center(
                child: Text(
                  '+',
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFEB5757),
                    ),
                  ),
                ),
              ),
            ),
            width: 30,
            height: 30,
          ),
        ],
      ),
    );
  }
}
