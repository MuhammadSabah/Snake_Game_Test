import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snake_game/Screens/game_screen.dart';
import 'package:snake_game/Screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Snake Game',
      debugShowCheckedModeBanner: false,
      home: ThemeSetUp(),
    );
  }
}

class ThemeSetUp extends StatelessWidget {
  const ThemeSetUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light().copyWith(
        textTheme: GoogleFonts.poppinsTextTheme(),
        // splashColor: Colors.transparent,
        // highlightColor: Colors.transparent,
      ),
      child: const WelcomeScreen(),
    );
  }
}
