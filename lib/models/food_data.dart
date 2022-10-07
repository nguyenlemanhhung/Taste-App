class FoodItem {
  final String foodName, foodCountry, foodImage;
  final String numberChoose;

  FoodItem({
    required this.foodName,
    required this.foodCountry,
    required this.foodImage,
    required this.numberChoose,
  });
}

List<FoodItem> foodData = [
  FoodItem(
    foodName: 'Afternoon Tea',
    foodCountry: 'Chinese',
    foodImage: '/images/feature/feature-3.png',
    numberChoose: '112',
  ),
  FoodItem(
    foodName: 'Roast Goose',
    foodCountry: 'England',
    foodImage: '/images/feature/feature-4.png',
    numberChoose: '112',
  ),
  FoodItem(
    foodName: 'Xiao long bao',
    foodCountry: 'Chinese',
    foodImage: '/images/feature/feature-5.png',
    numberChoose: '50',
  ),
  FoodItem(
    foodName: 'Pasta',
    foodCountry: 'Italy',
    foodImage: '/images/feature/feature-6.png',
    numberChoose: '99',
  ),
  FoodItem(
    foodName: 'Dumpling',
    foodCountry: 'Chinese',
    foodImage: '/images/feature/feature-7.png',
    numberChoose: '99',
  ),
  FoodItem(
    foodName: 'Ice cream',
    foodCountry: 'Italy',
    foodImage: '/images/feature/feature-8.png',
    numberChoose: '99',
  ),
  FoodItem(
    foodName: 'Afternoon Tea',
    foodCountry: 'England',
    foodImage: '/images/feature/feature-9.png',
    numberChoose: '99',
  ),
  FoodItem(
    foodName: 'Latte',
    foodCountry: 'Italy',
    foodImage: '/images/feature/feature-10.png',
    numberChoose: '99',
  ),
];
