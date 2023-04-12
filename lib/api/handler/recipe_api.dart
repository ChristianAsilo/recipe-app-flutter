import 'package:recipe_app_flutter/api/model/api_client.dart';
import 'package:recipe_app_flutter/api/model/meals.dart';

class RecipeApi {
  RecipeApi({
    required this.apiClient,
    required this.baseUri,
  });

  final ApiClient apiClient;
  final Uri baseUri;

  Future<List<Meals>> getRecipes({required List recipeName}) async {
    final queryParameters = <String, dynamic>{};
    queryParameters['s'] = recipeName;

    final uri = baseUri.replace(queryParameters: queryParameters);
    final response = await apiClient.dio.getUri(uri);
    return (response.data['meals'] as List).map((json) => Meals.fromJson(json)).toList();
  }
}
