import 'package:flutter/material.dart';
import 'package:recipe_app_flutter/api/model/meals.dart';
import 'package:recipe_app_flutter/utils/app_theme.dart';
import 'package:recipe_app_flutter/utils/spacing.dart';
import 'package:recipe_app_flutter/utils/string_constants.dart';
import 'package:recipe_app_flutter/widget/add_meal_buttom_sheet.dart';
import 'package:recipe_app_flutter/widget/recipe_card.dart';

class RecipeOverviewPage extends StatefulWidget {
  const RecipeOverviewPage({required this.recipes, Key? key}) : super(key: key);

  final List<Meals> recipes;

  @override
  State<RecipeOverviewPage> createState() => _RecipeOverviewPageState();
}

class _RecipeOverviewPageState extends State<RecipeOverviewPage> {
  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const VerticalSpace(height: 50),
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
              controller: _textController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.withOpacity(0.2),
                hintText: searchHintLabel,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
            ),
            const VerticalSpace(height: 20.0),
            Text(yourRecipesLabel, style: RecipeAppTheme.lightTextTheme.titleLarge),
            Expanded(
              child: ListView.builder(
                itemCount: widget.recipes.length,
                itemBuilder: (buildContext, int index) {
                  final meal = widget.recipes[index];
                  //Todo: add Function later
                  return GestureDetector(
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
}
