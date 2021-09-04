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
        description:
            "Irure exercitation occaecat ut est fugiat velit aliquip cupidatat enim ut irure nostrud do. Magna velit ipsum ut fugiat adipisicing cupidatat aute consequat id eu irure ad. Reprehenderit eiusmod ad .",
        cover: "test.png",
        price: 17.2,
        shortDescreption: "Beef with cheese",
        title: "Beef Burger",
      ),
      Meal(
        description:
            "Irure exercitation occaecat ut est fugiat velit aliquip cupidatat enim ut irure nostrud do. Magna velit ipsum ut fugiat adipisicing cupidatat aute consequat id eu irure ad. Reprehenderit eiusmod ad .",
        cover: "burger_1.png",
        price: 15.8,
        shortDescreption: "Beef with egg",
        title: "Rancho Burger",
      ),
      Meal(
        description:
            "Irure exercitation occaecat ut est fugiat velit aliquip cupidatat enim ut irure nostrud do. Magna velit ipsum ut fugiat adipisicing cupidatat aute consequat id eu irure ad. Reprehenderit eiusmod ad .",
        cover: "burger_2.png",
        price: 19.2,
        shortDescreption: "Beef with tomato",
        title: "Tehas Burger",
      ),
      Meal(
        description:
            "Irure exercitation occaecat ut est fugiat velit aliquip cupidatat enim ut irure nostrud do. Magna velit ipsum ut fugiat adipisicing cupidatat aute consequat id eu irure ad. Reprehenderit eiusmod ad .",
        cover: "burger.png",
        price: 14,
        shortDescreption: "Beef with chiken",
        title: "Chicken Burger",
      ),
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
