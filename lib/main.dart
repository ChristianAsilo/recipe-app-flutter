import 'package:async_redux/async_redux.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app_flutter/state/app_state.dart';
import 'package:recipe_app_flutter/widget/onboarding_page.dart';

Future<void> main() async {
  final store = Store<AppState>(
    initialState: AppState(),
    actionObservers: kReleaseMode ? null : [ConsoleActionObserver<AppState>()],
  );

  runApp(
    StoreProvider(
      store: store,
      child: const MaterialApp(
        home: OnBoardingPage(),
      ),
    ),
  );
}
