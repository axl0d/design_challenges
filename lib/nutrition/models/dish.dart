class Dish {
  final String name;
  final String image;
  final bool isLike;
  final double price;
  final double rating;
  final String color;

  const Dish(
    this.name,
    this.image,
    this.isLike,
    this.price,
    this.rating,
    this.color,
  );
}

const dishes = [
  Dish('Fruit soup', 'fruit_soup.png', true, 3.5, 4.5, 'FFE3E3'),
  Dish('Salad', 'salad.png', false, 2, 4.5, '80985C'),
  Dish('Salmon', 'salmon.png', false, 15, 4.5, '253B4A'),
  Dish('Burger', 'burger.png', false, 6.5, 4.5, 'B79161'),
];
