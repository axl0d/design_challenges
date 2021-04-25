import 'package:design_challenges/nutrition/models/dish.dart' as models;
import 'package:design_challenges/nutrition/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(51, 51, 51, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(51, 51, 51, 1),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset(
            'assets/nutrition/avatar.png',
          ),
        ),
        actions: [
          Image.asset(
            'assets/nutrition/notification.png',
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    'Find the Best Helath for You',
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: SearchBar(),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Filters(),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  bottom: 15,
                ),
                child: Text(
                  'Popular',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: StaggeredGridView(
                    aspectRatio: 0.98,
                    spacing: 8,
                    itemCount: models.dishes.length,
                    itemBuilder: (context, index) => Dish(
                      dish: models.dishes[index],
                    ),
                  ),
                ),
              ),
            ],
          ),
          CustomBottomNavigationBar(),
        ],
      ),
    );
  }
}
