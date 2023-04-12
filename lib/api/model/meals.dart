import 'package:freezed_annotation/freezed_annotation.dart';

part 'meals.freezed.dart';

part 'meals.g.dart';

@freezed
class Meals with _$Meals {
  factory Meals({
    @JsonKey(name: 'strMeal') required String strMeal,
    @JsonKey(name: 'strCategory') required String strCategory,
    @JsonKey(name: 'strMealThumb') required String image,
    @JsonKey(name: 'strInstructions') required String instructions,
    @JsonKey(name: 'strIngredient1') required String? ingredientOne,
    @JsonKey(name: 'strIngredient2') required String? ingredientTwo,
    @JsonKey(name: 'strIngredient3') required String? ingredientThree,
    @JsonKey(name: 'strIngredient4') required String? ingredientFour,
    @JsonKey(name: 'strIngredient5') required String? ingredientFive,
    @JsonKey(name: 'strIngredient6') required String? ingredientSix,
    @JsonKey(name: 'strIngredient7') required String? ingredientSeven,
    @JsonKey(name: 'strIngredient8') required String? ingredientEight,
    @JsonKey(name: 'strIngredient9') required String? ingredientNine,
    @JsonKey(name: 'strIngredient10') required String? ingredientTen,
    @JsonKey(name: 'strMeasure1') required String? strMeasureOne,
    @JsonKey(name: 'strMeasure2') required String? strMeasureTwo,
    @JsonKey(name: 'strMeasure3') required String? strMeasureThree,
    @JsonKey(name: 'strMeasure4') required String? strMeasureFour,
    @JsonKey(name: 'strMeasure5') required String? strMeasureFive,
    @JsonKey(name: 'strMeasure6') required String? strMeasureSix,
    @JsonKey(name: 'strMeasure7') required String? strMeasureSeven,
    @JsonKey(name: 'strMeasure8') required String? strMeasureEight,
    @JsonKey(name: 'strMeasure9') required String? strMeasureNine,
    @JsonKey(name: 'strMeasure10') required String? strMeasureTen,
  }) = _Meals;

  factory Meals.fromJson(Map<String, dynamic> json) => _$MealsFromJson(json);
}
