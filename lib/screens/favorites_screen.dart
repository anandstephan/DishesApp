import 'package:flutter/material.dart';
import 'package:mealsapp/models/meal.dart';
import 'package:mealsapp/widgets/meal_item.dart';

class Favorites extends StatelessWidget {
  final List<Meal> favoritesMeals;

  Favorites(this.favoritesMeals);

  @override
  Widget build(BuildContext context) {
    if (favoritesMeals.isEmpty) {
      return Center(
        child: Text("You have no favorites YET!!!--Add some Favorites!"),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoritesMeals[index].id,
            title: favoritesMeals[index].title,
            affordability: favoritesMeals[index].affordability,
            complexity: favoritesMeals[index].complexity,
            duration: favoritesMeals[index].duration,
            imageUrl: favoritesMeals[index].imageUrl,
          );
        },
        itemCount: favoritesMeals.length,
      );
    }
  }
}
