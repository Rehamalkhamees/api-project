import 'package:flutter/material.dart';
import 'package:api_project/models/meal_model.dart';
import 'package:api_project/services/api_service.dart';
import 'package:api_project/screens/meal_details_screen.dart';

class MealScreen extends StatefulWidget {
  final String category;

  const MealScreen({
    super.key,
    required this.category,
  });

  @override
  State<MealScreen> createState() => _MealScreenState();
}

class _MealScreenState extends State<MealScreen> {
  List<MealModel> meals = [];

  @override
  void initState() {
    super.initState();
    getMeals();
  }

  void getMeals() async {
    meals = await Api().getMeals(widget.category);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF9F4),
      body: meals.isEmpty
          ? const Center(
              child: CircularProgressIndicator(
                color: Color(0xff294B32),
              ),
            )
          : SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 20, 24, 10),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              color: const Color(0xffF6EEE7),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color(0xffE8DDD3),
                              ),
                            ),
                            child: const Icon(
                              Icons.arrow_back_ios_new,
                              size: 18,
                              color: Color(0xff294B32),
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Center(
                            child: Text(
                              'Tasteory',
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'serif',
                                color: Color(0xff294B32),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            color: const Color(0xffF6EEE7),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(0xffE8DDD3),
                            ),
                          ),
                          child: const Icon(
                            Icons.search,
                            color: Color(0xff294B32),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(28, 30, 28, 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        widget.category,
                        style: const TextStyle(
                          fontSize: 52,
                          height: 1,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'serif',
                          color: Color(0xff294B32),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'DELICIOUS RECIPES\nFOR EVERY TASTE.',
                        style: TextStyle(
                          letterSpacing: 3,
                          fontSize: 11,
                          height: 1.8,
                          color: Color(0xff806F64),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Expanded(
                    child: GridView.builder(
                      padding: const EdgeInsets.fromLTRB(24, 10, 24, 30),
                      itemCount: meals.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        childAspectRatio: 0.72,
                      ),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MealDetailsScreen(
                                  meal: meals[index],
                                ),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.08),
                                  blurRadius: 20,
                                  offset: const Offset(0, 8),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(28),
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Image.network(
                                      meals[index].mealImage,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned.fill(
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.transparent,
                                            Colors.black.withOpacity(0.75),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 16,
                                    right: 16,
                                    bottom: 16,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          meals[index].mealName,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 19,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        const SizedBox(height: 12),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Container(
                                            width: 42,
                                            height: 42,
                                            decoration: const BoxDecoration(
                                              color: Color(0xffFFF9F4),
                                              shape: BoxShape.circle,
                                            ),
                                            child: const Icon(
                                              Icons.arrow_forward_ios,
                                              size: 16,
                                              color: Color(0xff294B32),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}