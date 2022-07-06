import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';
import '../models/meal.dart';

class FavouriteScreen extends StatelessWidget {
  final List<Meal> favouriteMeals;
  // ignore: use_key_in_widget_constructors
  const FavouriteScreen(this.favouriteMeals);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: favouriteMeals.isEmpty
          ? const Center(
              child: Text(
                'You have no favourites yet!\nStart adding some',
                textAlign: TextAlign.center,
              ),
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return MealItem(
                  id: favouriteMeals[index].id,
                  title: favouriteMeals[index].title,
                  imageUrl: favouriteMeals[index].imageUrl,
                  duration: favouriteMeals[index].duration,
                  complexity: favouriteMeals[index].complexity,
                  affordability: favouriteMeals[index].affordability,
                );
              },
              itemCount: favouriteMeals.length,
            ),
    );
  }
}
