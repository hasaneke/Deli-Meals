import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavouriteScreen extends StatelessWidget {
  List<Meal> favouriteMeals;

  FavouriteScreen(this.favouriteMeals);
  @override
  Widget build(BuildContext context) {
    if (favouriteMeals.isEmpty) {
      return Center(
        child: Text('No favourites yet - start adding some!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favouriteMeals[index].id,
            title: favouriteMeals[index].title,
            imageUrl: favouriteMeals[index].imageUrl,
            duration: favouriteMeals[index].duration,
            affordability: favouriteMeals[index].affordability,
            complexity: favouriteMeals[index].complexity,
          );
        },
        itemCount: favouriteMeals.length,
      );
    }
  }
}
