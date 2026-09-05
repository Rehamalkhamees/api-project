import 'package:flutter/material.dart';
import 'package:api_project/models/category_model.dart';
import 'package:api_project/services/api_service.dart';
import 'package:api_project/screens/meal_screen.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List<CategoryModel> categories = [];

  @override
  void initState() {
    super.initState();
    getCategories();
  }

  void getCategories() async {
    categories = await Api().getCategories();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff2B1810),
              Color(0xff5A3825),
              Color(0xff7A5138),
              Color(0xff3A2116),
            ],
          ),
        ),
        child: categories.isEmpty
            ? const Center(
                child: CircularProgressIndicator(
                  color: Color(0xffF5E6D3),
                ),
              )
            : SafeArea(
                child: ListView(
                  padding: const EdgeInsets.fromLTRB(25, 25, 25, 40),
                  children: [
                    const Text(
                      'Tasteory',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'serif',
                        color: Color(0xffF5E6D3),
                      ),
                    ),

                    const SizedBox(height: 55),

                    const Text(
                      'Explore by category',
                      style: TextStyle(
                        fontSize: 45,
                        height: 1,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'serif',
                        color: Color(0xffFFF4E8),
                      ),
                    ),

                    const SizedBox(height: 15),

                    const Text(
                      'Pick a flavor and start exploring.',
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xffD8C0AD),
                      ),
                    ),

                    const SizedBox(height: 40),

                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: categories.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        childAspectRatio: 0.82,
                      ),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MealScreen(
                                  category: categories[index].categoryName,
                                ),
                              ),
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                Image.network(
                                  categories[index].categoryImage,
                                  fit: BoxFit.cover,
                                ),

                                Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.transparent,
                                        Colors.black.withOpacity(0.7),
                                      ],
                                    ),
                                  ),
                                ),

                                Positioned(
                                  left: 18,
                                  bottom: 18,
                                  child: Text(
                                    categories[index].categoryName,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}