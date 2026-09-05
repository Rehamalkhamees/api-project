import 'dart:convert';

import 'package:api_project/models/category_model.dart';
import 'package:api_project/models/meal_model.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<List<CategoryModel>> getCategories() async {


    String link =   'https://www.themealdb.com/api/json/v1/1/categories.php';

    var uri = Uri.parse(link);

    var response = await http.get(uri);

    var responseBody = response.body;

    var jsonBody = jsonDecode(responseBody);

    List<CategoryModel> list = [];

    for (var category in jsonBody['categories']) {
      list.add(CategoryModel.fromJson(category));
    }

    return list;
  }

  Future<List<MealModel>> getMeals(String category) async {

    String link = 'https://www.themealdb.com/api/json/v1/1/filter.php?c=$category';

    var uri = Uri.parse(link);

    var response = await http.get(uri);

    var responseBody = response.body;

    var jsonBody = jsonDecode(responseBody);

    List<MealModel> list = [];

    for (var meal in jsonBody['meals']) {
      list.add(MealModel.fromJson(meal));
    }

    return list;
  }
}