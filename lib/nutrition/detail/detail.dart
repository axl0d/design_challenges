import 'package:design_challenges/nutrition/detail/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF333333),
      appBar: AppBar(
        backgroundColor: Color(0xFF333333),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset(
            'assets/nutrition/arrow_left.png',
          ),
        ),
        title: Text(
          'Detail',
          style: GoogleFonts.rubik(
            textStyle: TextStyle(
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset(
              'assets/nutrition/menu.png',
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 1,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.68,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFFFE3E3),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80),
                  topRight: Radius.circular(80),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Text(
                                'Fruit Soup',
                                style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 14,
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: '4.5 ',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '(560)',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/nutrition/heart_fill.png',
                          fit: BoxFit.fill,
                          width: 40,
                          height: 40,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TitleSection(title: 'Detail'),
                          Counter(),
                        ],
                      ),
                    ),
                    Text(
                      description,
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Vitamins(),
                    TitleSection(title: 'Ingredients'),
                    Ingredients(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Price(),
                        BuyButton(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 50,
            right: 50,
            child: Image.asset(
              'assets/nutrition/fruit_soup_detail.png',
              height: MediaQuery.of(context).size.height * 0.33,
            ),
          ),
        ],
      ),
    );
  }
}

const description = '''This Fruit Soup may use jelly which is diced as well to
add flavor and crowd to the Fruit Soup. I didn't have
time to make the jelly, so I didn't use it''';
