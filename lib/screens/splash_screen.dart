import 'package:flutter/material.dart';
import 'package:api_project/screens/categories_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF4A2C1A),
                  Color(0xFF8B5E3C),
                  Color(0xFFC49A6C),
                  Color(0xFF6F422A),
                ],
              ),
            ),
          ),

          Positioned(
            top: -120,
            right: -100,
            child: Container(
              width: 350,
              height: 350,
              decoration: BoxDecoration(
                color: const Color(0xFF3E2416).withOpacity(0.5),
                shape: BoxShape.circle,
              ),
            ),
          ),

          Positioned(
            bottom: -150,
            left: -120,
            child: Container(
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                color: const Color(0xFF2F1B12).withOpacity(0.45),
                shape: BoxShape.circle,
              ),
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 40,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 60),

                  const Text(
                    'Tasteory',
                    style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF1E2B1F),
                    ),
                  ),

                  const Spacer(),

                  const Text(
                    'Every dish\nhas a story.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      fontStyle: FontStyle.italic,
                      color: Color(0xFF2D211A),
                      height: 1.4,
                    ),
                  ),

                  const SizedBox(height: 30),

                  Container(
                    width: 150,
                    height: 1,
                    color: const Color(0xFF5B4030),
                  ),

                  const SizedBox(height: 35),

                  const Text(
                    'G O O D   F O O D',
                    style: TextStyle(
                      fontSize: 13,
                      letterSpacing: 3,
                      color: Color(0xFF2D211A),
                    ),
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    'B R I G H T E R   D A Y S',
                    style: TextStyle(
                      fontSize: 11,
                      letterSpacing: 3,
                      color: Color(0xFF2D211A),
                    ),
                  ),

                  const Spacer(),

                  SizedBox(
                    width: double.infinity,
                    height: 65,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1E2B1F),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const CategoriesScreen(),
                          ),
                        );
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Explore the Menu',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 15),
                          Icon(Icons.arrow_forward, size: 28),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}