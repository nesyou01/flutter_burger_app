import 'package:flutter/material.dart';

import '../../models/meal_model.dart';
import '../widgets/quantity_selector.dart';
import '../widgets/gradient_button.dart';

class MealScreen extends StatelessWidget {
  const MealScreen({Key? key, required this.meal}) : super(key: key);
  final Meal meal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
            tooltip: "Show More",
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Image.asset("assets/images/${meal.cover}"),
          ),
          Container(
            margin:
                const EdgeInsets.symmetric(horizontal: 15).copyWith(bottom: 20),
            child: Wrap(
              runSpacing: 10,
              children: [
                Text(
                  meal.title,
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  meal.description,
                  style: Theme.of(context).textTheme.headline6,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const QuantitySelector(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Total price'),
                          Text(
                            "\$" + meal.price.toStringAsFixed(2),
                            style: Theme.of(context).textTheme.headline1,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                GradientButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.shopping_cart),
                      Text(
                        "Add to cart",
                        style: Theme.of(context)
                            .textTheme
                            .headline2
                            ?.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
