import 'package:flutter/material.dart';
import 'package:recipe_app_flutter/api/model/meals.dart';
import 'package:recipe_app_flutter/utils/app_theme.dart';
import 'package:recipe_app_flutter/utils/async.dart';
import 'package:recipe_app_flutter/utils/spacing.dart';
import 'package:recipe_app_flutter/utils/string_constants.dart';
import 'package:recipe_app_flutter/widget/add_meal_buttom_sheet.dart';
import 'package:recipe_app_flutter/widget/recipe_card.dart';
import 'package:recipe_app_flutter/widget/recipe_details.dart';

class RecipeOverviewPage extends StatelessWidget {
  const RecipeOverviewPage({required this.recipes, Key? key}) : super(key: key);

  final Async<List<Meals>> recipes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: recipes.when(
          (recipe) => Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const VerticalSpace(height: 50.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              hungryLabel,
                              textAlign: TextAlign.left,
                              style: RecipeAppTheme.lightTextTheme.titleMedium,
                            ),
                            Text(
                              getInspiredLabel,
                              textAlign: TextAlign.left,
                              style: RecipeAppTheme.lightTextTheme.titleMedium,
                            ),
                          ],
                        ),
                        const Icon(Icons.account_box, size: 60)
                      ],
                    ),
                    const VerticalSpace(height: 20.0),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.2),
                        hintText: searchHintLabel,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.2),
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15.0),
                          ),
                        ),
                      ),
                    ),
                    const VerticalSpace(height: 20.0),
                    Text(yourRecipesLabel, style: RecipeAppTheme.lightTextTheme.titleLarge),
                    Expanded(
                      child: ListView.builder(
                        itemCount: recipe.length,
                        itemBuilder: (buildContext, int index) {
                          final meal = recipe[index];
                          return GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RecipeDetailsPage(meal: meal),
                              ),
                            ),
                            child: RecipeCard(
                              image: meal.image,
                              mealName: meal.strMeal,
                              category: meal.strCategory,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (errorMessage) {
            WidgetsBinding.instance.addPostFrameCallback((_) => _showErrorMessage(context, errorMessage));
            return Center(
              child: Text(
                noRecipeAvailable,
                style: RecipeAppTheme.lightTextTheme.displaySmall,
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
            builder: (BuildContext context) => const AddMealBottomSheet()),
        backgroundColor: const Color.fromRGBO(88, 47, 251, 1),
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }

  void _showErrorMessage(BuildContext context, String? errorMessage) {
    final SnackBar snackBar = SnackBar(
      content: Text(errorMessage ?? emptyString),
      duration: const Duration(seconds: 5),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
