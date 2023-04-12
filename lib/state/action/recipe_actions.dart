import 'package:async_redux/async_redux.dart';
import 'package:recipe_app_flutter/api/model/api_service.dart';
import 'package:recipe_app_flutter/api/model/meals.dart';
import 'package:recipe_app_flutter/state/app_state.dart';

/// Getting of meals from the api
class GetRecipeAction extends ReduxAction<AppState> {
  @override
  Future<AppState> reduce() async {
    //TODO: Modify later for adding recipes using add recipe
    final recipeNames = [
      'French Onion Soup',
      'Creamy Tomato Soup',
      'Tonkatsu pork',
      'French Omelette',
      'Jamaican Beef Patties',
      'Tonkatsu pork',
      'Shawarma',
    ];
    final recipes = <Meals>[];

    for (final recipeName in recipeNames) {
      final recipe = await ApiService().recipeApi.getRecipe(recipeName: recipeName);
      recipes.add(recipe);
    }

    return state.copyWith(meals: recipes);
  }
}
