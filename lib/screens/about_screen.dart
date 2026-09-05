import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 222, 198, 178),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 48,
                      height: 48,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 225, 198, 174),
                        shape: BoxShape.circle,
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
                  const SizedBox(width: 48),
                ],
              ),
              const Spacer(),
              const Text(
                'Every dish\nhas a story.',
                style: TextStyle(
                  fontSize: 58,
                  height: 1,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'serif',
                  color: Color(0xff294B32),
                ),
              ),
              const SizedBox(height: 28),
              const Text(
                'Tasteory is your little world of flavors, recipes and delicious discoveries.',
                style: TextStyle(
                  fontSize: 18,
                  height: 1.7,
                  color: Color(0xff806F64),
                ),
              ),
              const SizedBox(height: 18),
              const Text(
                'We believe that food is more than just something you eat. Every recipe has a memory, every flavor tells a story, and every meal can become a special moment.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.8,
                  color: Color(0xff9A8171),
                ),
              ),
              const SizedBox(height: 40),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: const Color(0xffF3DDD3),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.restaurant_menu,
                      size: 35,
                      color: Color(0xff294B32),
                    ),
                    SizedBox(height: 18),
                    Text(
                      'Good food,\nbrighter days.',
                      style: TextStyle(
                        fontSize: 30,
                        height: 1.1,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'serif',
                        color: Color(0xff294B32),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Center(
                child: Text(
                  'MADE WITH LOVE FOR FOOD',
                  style: TextStyle(
                    fontSize: 10,
                    letterSpacing: 3,
                    color: Color(0xff9A8171),
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}