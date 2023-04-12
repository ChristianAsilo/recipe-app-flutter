import 'package:async_redux/async_redux.dart';
import 'package:recipe_app_flutter/api/model/api_service.dart';
import 'package:recipe_app_flutter/state/app_state.dart';

/// Getting of meals from the api
class GetRecipeAction extends ReduxAction<AppState> {
  @override
  Future<AppState> reduce() async {
    final recipes = await ApiService().recipeApi.getRecipes(recipeName: []);
    
    return state.copyWith(meals: recipes);
  }
}
