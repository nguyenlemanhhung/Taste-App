class FoodItem {
  final String foodName, foodCountry, foodImage;

  FoodItem({
    required this.foodName,
    required this.foodCountry,
    required this.foodImage,
  });
}

List<FoodItem> activeGoalsData = [
  FoodItem(
    foodName: 'Dumpling',
    foodCountry: 'Chinese',
    foodImage: '/images/feature/feature-7.png',
  ),
  FoodItem(
    foodName: 'Ice cream',
    foodCountry: 'Italy',
    foodImage: '/images/feature/feature-8.png',
  ),
];
