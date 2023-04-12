import 'package:flutter/material.dart';
import 'package:recipe_app_flutter/utils/app_theme.dart';

class CapsuleButton extends StatelessWidget {
  const CapsuleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(30.0),
                  ),
                ),
                backgroundColor: const Color.fromRGBO(88, 47, 251, 1),
              ),
              child: const Text('Ingredients'),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                // Do something
              },
              style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(30.0),
                    ),
                  ),
                  backgroundColor: Colors.white),
              child: Text('Recipe', style: RecipeAppTheme.lightTextTheme.displaySmall),
            ),
          ),
        ],
      ),
    );
  }
}
