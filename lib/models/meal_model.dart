class MealModel {
  String mealId;
  String mealName;
  String mealImage;
  String mealArea;

  MealModel({
    required this.mealId,
    required this.mealName,
    required this.mealImage,
    required this.mealArea,
  });

  factory MealModel.fromJson(Map<String, dynamic> json) {
    return MealModel(
      mealId: json['idMeal'],
      mealName: json['strMeal'],
      mealImage: json['strMealThumb'],
      mealArea: json['strArea'] ?? '',
    );
  }
}