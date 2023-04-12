import 'package:async_redux/async_redux.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app_flutter/api/model/meals.dart';

part 'app_state.freezed.dart';

part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  factory AppState({
    @Default(<Meals>[]) List<Meals> meals,

    //ignored by state
    @Default(Wait.empty) @JsonKey(ignore: true) Wait wait,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) => _$AppStateFromJson(json);
}
