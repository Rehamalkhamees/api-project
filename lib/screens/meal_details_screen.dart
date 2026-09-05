import 'package:flutter/material.dart';
import 'package:api_project/models/meal_model.dart';

class MealDetailsScreen extends StatelessWidget {
  final MealModel meal;

  const MealDetailsScreen({
    super.key,
    required this.meal,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF9F4),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: Image.network(
                        meal.mealImage,
                        height: 380,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 18,
                      left: 18,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 52,
                          height: 52,
                          decoration: const BoxDecoration(
                            color: Color(0xffFFF9F4),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            size: 18,
                            color: Color(0xff294B32),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 18,
                      right: 18,
                      child: Container(
                        width: 52,
                        height: 52,
                        decoration: const BoxDecoration(
                          color: Color(0xffFFF9F4),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.favorite_border,
                          color: Color(0xff294B32),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 15, 30, 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'DELICIOUS RECIPE',
                      style: TextStyle(
                        fontSize: 11,
                        letterSpacing: 4,
                        color: Color(0xff9A8171),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      meal.mealName,
                      style: const TextStyle(
                        fontSize: 44,
                        height: 1.05,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'serif',
                        color: Color(0xff294B32),
                      ),
                    ),
                    const SizedBox(height: 28),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 18,
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xffF6EEE7),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.access_time_outlined,
                                color: Color(0xff294B32),
                              ),
                              SizedBox(height: 8),
                              Text(
                                '30 mins',
                                style: TextStyle(
                                  color: Color(0xff294B32),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 45,
                            child: VerticalDivider(
                              color: Color(0xffD9CABE),
                            ),
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.restaurant_outlined,
                                color: Color(0xff294B32),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Easy',
                                style: TextStyle(
                                  color: Color(0xff294B32),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 45,
                            child: VerticalDivider(
                              color: Color(0xffD9CABE),
                            ),
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.people_outline,
                                color: Color(0xff294B32),
                              ),
                              SizedBox(height: 8),
                              Text(
                                '2 servings',
                                style: TextStyle(
                                  color: Color(0xff294B32),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 28),
                    const Text(
                      'A delicious dish made with carefully selected ingredients and rich flavors. Perfect for sharing and enjoying any time.',
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.7,
                        color: Color(0xff806F64),
                      ),
                    ),
                    const SizedBox(height: 35),
                    SizedBox(
                      width: double.infinity,
                      height: 65,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff294B32),
                          foregroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'View full recipe',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 15),
                            Icon(Icons.arrow_forward),
                          ],
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
  }
}