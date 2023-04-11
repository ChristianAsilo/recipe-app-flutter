import 'package:freezed_annotation/freezed_annotation.dart';

part 'meals.freezed.dart';

part 'meals.g.dart';

@freezed
class Meals with _$Meals {
  factory Meals({
    @JsonKey(name: 'strMeal') required String strMeal,
    @JsonKey(name: 'strCategory') required String strCategory,
  }) = _Meals;

  factory Meals.fromJson(Map<String, dynamic> json) => _$MealsFromJson(json);
}
