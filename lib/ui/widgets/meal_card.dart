import '../../models/meal_model.dart';
import 'package:flutter/material.dart';

class MealCard extends StatelessWidget {
  const MealCard({
    Key? key,
    required this.meal,
  }) : super(key: key);
  final Meal meal;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Image.asset("assets/images/${meal.cover}"),
        ),
        Text(
          meal.title,
          style: Theme.of(context).textTheme.headline5,
        ),
        Text(meal.shortDescreption),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              meal.price.toStringAsFixed(2),
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(fontSize: 14.5),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
            )
          ],
        ),
      ],
    );
  }
}
