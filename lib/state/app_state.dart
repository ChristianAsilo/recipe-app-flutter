import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app_flutter/api/model/meals.dart';

part 'app_state.freezed.dart';

part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  factory AppState({
    @Default(<Meals>[]) List<Meals> meals,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) => _$AppStateFromJson(json);
}
