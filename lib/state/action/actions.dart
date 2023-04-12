import 'package:async_redux/async_redux.dart';
import 'package:recipe_app_flutter/state/app_state.dart';

/// add and remove actionKey  before and after the loading action is dispatched
abstract class LoadingAction extends ReduxAction<AppState> {
  LoadingAction({required this.actionKey});

  final String actionKey;

  @override
  void before() => dispatchAsync(WaitAction.add(actionKey));

  @override
  void after() => dispatchAsync(WaitAction.remove(actionKey));
}
