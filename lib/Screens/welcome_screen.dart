import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:snake_game/constants.dart';

import 'game_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            const Center(
              child: Text(
                'Snake Game',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: blackColor1,
                ),
              ),
            ),
            const Spacer(),
            AvatarGlow(
              endRadius: 120,
              duration: const Duration(seconds: 2),
              glowColor: Colors.white,
              repeat: true,
              showTwoGlows: true,
              child: CircleAvatar(
                backgroundColor: blackColor1,
                child: Image.asset(
                  'assets/snake.png',
                  color: Colors.white,
                  fit: BoxFit.fill,
                ),
                radius: 75,
              ),
            ),
            const Spacer(),
            const Center(
              child: Text(
                'CreatedByHama9Dev',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: blackColor1,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GameScreen(),
                    ),
                  );
                },
                child: Container(
                  height: 80,
                  decoration: const BoxDecoration(
                    color: blackColor1,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Play Game',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: whiteColor1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
