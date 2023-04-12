import 'package:flutter/material.dart';
import 'package:recipe_app_flutter/api/model/meals.dart';
import 'package:recipe_app_flutter/utils/app_theme.dart';
import 'package:recipe_app_flutter/utils/spacing.dart';
import 'package:recipe_app_flutter/widget/capsule_button.dart';

class RecipeDetailsPage extends StatelessWidget {
  const RecipeDetailsPage({
    required this.meal,
    Key? key,
  }) : super(key: key);

  final Meals meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300.0,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30.0),
                bottomLeft: Radius.circular(30.0),
              ),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(30.0),
                bottomLeft: Radius.circular(30.0),
              ),
              child: Stack(
                children: [
                  Container(
                    width: 500,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(meal.image),
                        fit: BoxFit.fitWidth,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4),
                          BlendMode.darken,
                        ),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.8),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            meal.strCategory,
                            style: RecipeAppTheme.darkTextTheme.titleMedium,
                          ),
                          Text(
                            meal.strMeal,
                            style: RecipeAppTheme.darkTextTheme.displayMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Notes', style: RecipeAppTheme.lightTextTheme.titleLarge),
                //TODO: Use TextField later
                const Text('Notes here'),
                const VerticalSpace(height: 100.0),
                const CapsuleButton(),
                const VerticalSpace(height: 20.0),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200,
                  ),
                  width: 400,
                  height: 200,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(meal.strMeasureOne.toString(), style: RecipeAppTheme.lightTextTheme.displaySmall),
                              Text(meal.strMeasureTwo.toString(), style: RecipeAppTheme.lightTextTheme.displaySmall),
                              Text(meal.strMeasureThree.toString(), style: RecipeAppTheme.lightTextTheme.displaySmall),
                              Text(meal.strMeasureFour.toString(), style: RecipeAppTheme.lightTextTheme.displaySmall),
                              Text(meal.strMeasureFive.toString(), style: RecipeAppTheme.lightTextTheme.displaySmall),
                              Text(meal.strMeasureSix.toString(), style: RecipeAppTheme.lightTextTheme.displaySmall),
                              Text(meal.strMeasureSeven.toString(), style: RecipeAppTheme.lightTextTheme.displaySmall),
                              Text(meal.strMeasureEight.toString(), style: RecipeAppTheme.lightTextTheme.displaySmall),
                              Text(meal.strMeasureNine.toString(), style: RecipeAppTheme.lightTextTheme.displaySmall),
                              Text(meal.strMeasureTen.toString(), style: RecipeAppTheme.lightTextTheme.displaySmall),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(meal.ingredientOne.toString(), style: RecipeAppTheme.lightTextTheme.displaySmall),
                              Text(meal.ingredientTwo.toString(), style: RecipeAppTheme.lightTextTheme.displaySmall),
                              Text(meal.ingredientThree.toString(), style: RecipeAppTheme.lightTextTheme.displaySmall),
                              Text(meal.ingredientFour.toString(), style: RecipeAppTheme.lightTextTheme.displaySmall),
                              Text(meal.ingredientFive.toString(), style: RecipeAppTheme.lightTextTheme.displaySmall),
                              Text(meal.ingredientSix.toString(), style: RecipeAppTheme.lightTextTheme.displaySmall),
                              Text(meal.ingredientSeven.toString(), style: RecipeAppTheme.lightTextTheme.displaySmall),
                              Text(meal.ingredientEight.toString(), style: RecipeAppTheme.lightTextTheme.displaySmall),
                              Text(meal.ingredientNine.toString(), style: RecipeAppTheme.lightTextTheme.displaySmall),
                              Text(meal.ingredientTen.toString(), style: RecipeAppTheme.lightTextTheme.displaySmall),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
