import 'package:flutter/material.dart';
import 'package:recipe_app_flutter/utils/app_theme.dart';
import 'package:recipe_app_flutter/utils/spacing.dart';
import 'package:recipe_app_flutter/utils/string_constants.dart';

class AddMealBottomSheet extends StatelessWidget {
  const AddMealBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(223, 182, 19, 1),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.close),
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const VerticalSpace(height: 30.0),
            Text(enterMealNameLabel, style: RecipeAppTheme.lightTextTheme.titleLarge),
            const VerticalSpace(height: 30.0),
            Text(mealLabel, style: RecipeAppTheme.lightTextTheme.titleSmall),
            const VerticalSpace(height: 15.0),
            TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 50),
                filled: true,
                fillColor: Colors.grey.withOpacity(0.2),
                hintText: hintTextLabel,
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
            const VerticalSpace(height: 50.0),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(Color.fromRGBO(88, 47, 251, 1)),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                fixedSize: const MaterialStatePropertyAll(
                  Size(350, 50),
                ),
              ),
              //TODO: add function later
              onPressed: () {},
              child: Text(addMealLabel, style: RecipeAppTheme.darkTextTheme.titleMedium),
            ),
          ],
        ),
      ),
    );
  }
}
