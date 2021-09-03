import 'meal_model.dart';

class FoodCategory {
  String name;
  List<Meal> meals;

  FoodCategory({
    required this.meals,
    required this.name,
  });
}

List<FoodCategory> food = [
  FoodCategory(
    meals: [
      Meal(
        description: "description",
        cover: "test.png",
        price: 15.5,
        shortDescreption: "shortDescreption",
        title: "title",
      )
    ],
    name: "Burger",
  ),
  FoodCategory(
    meals: [],
    name: "Pasta",
  ),
  FoodCategory(
    meals: [],
    name: "Salads",
  ),
];
