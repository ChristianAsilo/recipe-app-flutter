import 'package:flutter/material.dart';
import 'package:recipe_app_flutter/utils/app_theme.dart';
import 'package:recipe_app_flutter/utils/spacing.dart';
import 'package:recipe_app_flutter/utils/string_constants.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/images/onboarding/onboarding.jpeg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black12.withOpacity(0.3), BlendMode.darken),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                  const VerticalSpace(height: 30),
                  Text(
                    welcomeLabel,
                    textAlign: TextAlign.center,
                    style: RecipeAppTheme.darkTextTheme.titleLarge,
                  ),
                  const VerticalSpace(height: 410),
                  Text(
                    detailsLabel,
                    textAlign: TextAlign.center,
                    style: RecipeAppTheme.darkTextTheme.displayMedium,
                  ),
                  const VerticalSpace(height: 20),
                  Text(
                    descriptionLabel,
                    textAlign: TextAlign.center,
                    style: RecipeAppTheme.darkTextTheme.displaySmall,
                  ),
                  const VerticalSpace(height: 30),

                  //TODO: convert to reusable ElevatedButton later
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(Color.fromRGBO(88, 47, 251, 1)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      fixedSize: const MaterialStatePropertyAll(
                        Size(350, 50),
                      ),
                    ),

                    //TODO: add function later
                    onPressed: () {},
                    child: Text(getStartedLabel, style: RecipeAppTheme.darkTextTheme.titleMedium),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
