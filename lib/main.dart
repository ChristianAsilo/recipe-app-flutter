import 'package:async_redux/async_redux.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app_flutter/features/recipe_overview/recipe_overview_connector.dart';
import 'package:recipe_app_flutter/state/app_state.dart';

Future<void> main() async {
  final store = Store<AppState>(
    initialState: AppState(),
    actionObservers: kReleaseMode ? null : [ConsoleActionObserver<AppState>()],
  );

  runApp(
    StoreProvider(
      store: store,
      child: const MaterialApp(
        //TODO: to be replaced by onboarding page
        home: RecipeOverviewConnector(),
      ),
    ),
  );
}
