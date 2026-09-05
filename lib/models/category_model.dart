class CategoryModel {
  String categoryId;
  String categoryName;
  String categoryImage;
  String categoryDescription;

  CategoryModel({
    required this.categoryId,
    required this.categoryName,
    required this.categoryImage,
    required this.categoryDescription,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      categoryId: json['idCategory'],
      categoryName: json['strCategory'],
      categoryImage: json['strCategoryThumb'],
      categoryDescription: json['strCategoryDescription'],
    );
  }
}