import 'package:async_redux/async_redux.dart';
import 'package:recipe_app_flutter/api/model/meals.dart';
import 'package:recipe_app_flutter/features/recipe_overview/recipe_overview_connector.dart';
import 'package:recipe_app_flutter/state/app_state.dart';

class RecipeOverviewVmFactory extends VmFactory<AppState, RecipeOverviewConnector> {
  @override
  Vm fromStore() => RecipeOverviewVm(recipes: _recipe);

  List<Meals> get _recipe => state.meals;
}

class RecipeOverviewVm extends Vm {
  RecipeOverviewVm({
    required this.recipes,
  }) : super(equals: [recipes]);

  final List<Meals> recipes;
}
