import 'package:lcd_loan/state_util.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lcd_loan/core.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lcd Loan',
      debugShowCheckedModeBanner: false,
      navigatorKey: Get.navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        textTheme: GoogleFonts.openSansTextTheme(),
        useMaterial3: true,
      ),
      home: const MainNavigationView(),
    );
  }
}
