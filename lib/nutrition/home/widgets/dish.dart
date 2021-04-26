import 'package:design_challenges/nutrition/detail/detail.dart';
import 'package:design_challenges/nutrition/models/dish.dart' as models;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dish extends StatelessWidget {
  const Dish({
    Key? key,
    required this.dish,
  }) : super(key: key);

  final models.Dish dish;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailPage(
            dish: dish,
          ),
        ),
      ),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Color(
          int.parse(
            '0xff' + dish.color,
          ),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Image.asset(
                    'assets/nutrition/${dish.image}',
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
                _Body(
                  name: dish.name,
                  price: dish.price,
                  isLike: dish.isLike,
                )
              ],
            ),
            _Rating(
              rating: dish.rating,
            )
          ],
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
    required this.name,
    required this.price,
    required this.isLike,
  }) : super(key: key);

  final String name;
  final double price;
  final bool isLike;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 18,
          right: 10,
          top: 8,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  '\$$price',
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFEB5757),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            Image.asset(
              'assets/nutrition/${isLike ? 'heart_fill.png' : 'heart.png'}',
            ),
          ],
        ),
      ),
    );
  }
}

class _Rating extends StatelessWidget {
  const _Rating({
    Key? key,
    required this.rating,
  }) : super(key: key);

  final double rating;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 8,
      right: 4,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
            color: Colors.white,
            width: 0.5,
          ),
        ),
        color: Colors.white.withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 3,
          ),
          child: Row(
            children: [
              const Icon(
                Icons.star,
                color: Colors.yellow,
                size: 12,
              ),
              Text(
                '$rating',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
