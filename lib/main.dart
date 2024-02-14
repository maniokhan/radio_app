import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radio_app/src/constants/app_colors.dart';
import 'package:radio_app/src/features/splash_screen.dart';
import 'package:radio_app/src/settings/allNotificationsSettings.dart';


void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(
        textTheme: GoogleFonts.poppinsTextTheme(),
        colorScheme: ColorScheme.dark().copyWith(
          background: AppColors.background,
        ),
      ),
      // home: SplashScreen(),
      home: const AllNotifications(),
    );
  }
}
