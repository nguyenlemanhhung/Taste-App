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
    foodName: 'Afternoon Tea',
    foodCountry: 'England',
    foodImage: '/images/feature/feature-9.png',
  ),
  FoodItem(
    foodName: 'Latte',
    foodCountry: 'Italy',
    foodImage: '/images/feature/feature-10.png',
  ),
];
