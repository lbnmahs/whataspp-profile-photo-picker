import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_photo/profile_page.dart';

void main() {
  runApp(const MyApp());
}

final colorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Colors.greenAccent,
  background: Colors.blueGrey
);

final theme = ThemeData().copyWith(
  scaffoldBackgroundColor: colorScheme.background,
  colorScheme: colorScheme,
  textTheme: GoogleFonts.arvoTextTheme()
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Profile Photo',
      theme: theme,
      home: const ProfilePage(),
    );
  }
}
