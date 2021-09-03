import 'package:burger/ui/widgets/dot_indicator.dart';
import 'package:burger/ui/widgets/meal_card.dart';

import '../../../models/food_category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: food.length,
      child: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (_) => IconButton(
              onPressed: () => Scaffold.of(_).openDrawer(),
              icon: SvgPicture.asset('assets/icons/menu.svg'),
              tooltip: "Open Menu",
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/bell.svg'),
              tooltip: "Notifications",
            ),
          ],
        ),
        drawer: Drawer(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              child: Wrap(
                direction: Axis.vertical,
                children: [
                  Text(
                    'Every Bite a',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    'Better burger!',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Theme(
                  data: ThemeData(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                  ),
                  child: TabBar(
                    tabs: food.map((e) => Text(e.name)).toList(),
                    indicator: DotIndicator(),
                    indicatorWeight: 13,
                    labelPadding: EdgeInsets.symmetric(horizontal: 28),
                    isScrollable: true,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/filter.svg'),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                physics: BouncingScrollPhysics(),
                children: food.map((e) {
                  if (e.meals.isNotEmpty) {
                    return GridView.count(
                      physics: BouncingScrollPhysics(),
                      padding: const EdgeInsets.symmetric(horizontal: 25)
                          .copyWith(top: 15),
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                      mainAxisSpacing: 20,
                      children: e.meals
                          .map(
                            (e) => MealCard(
                              meal: e,
                            ),
                          )
                          .toList(),
                    );
                  }
                  return Center(
                    child: Text("Nothing to show"),
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
