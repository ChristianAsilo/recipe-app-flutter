import 'package:async_redux/async_redux.dart';
import 'package:recipe_app_flutter/api/model/meals.dart';
import 'package:recipe_app_flutter/features/recipe_overview/recipe_overview_connector.dart';
import 'package:recipe_app_flutter/state/action/recipe_actions.dart';
import 'package:recipe_app_flutter/state/app_state.dart';
import 'package:recipe_app_flutter/utils/async.dart';
import 'package:recipe_app_flutter/utils/string_constants.dart';

class RecipeOverviewVmFactory extends VmFactory<AppState, RecipeOverviewConnector> {
  @override
  Vm fromStore() => RecipeOverviewVm(recipes: _recipe());

  Async<List<Meals>> _recipe() {
    if (state.wait.isWaitingFor(GetRecipeAction.key)) return const Async.loading();
    if (state.meals.isEmpty) return const Async.error(errorMessage);

    return Async(state.meals);
  }
}

class RecipeOverviewVm extends Vm {
  RecipeOverviewVm({
    required this.recipes,
  }) : super(equals: [recipes]);

  final Async<List<Meals>> recipes;
}
