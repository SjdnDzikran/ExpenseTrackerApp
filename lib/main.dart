import 'package:expense_tracker_app/pages/expense_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Import google_fonts

void main() {
  runApp(const ExpenseTracker());
}

class ExpenseTracker extends StatelessWidget {
  const ExpenseTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue[700]!,
        ),
        // Apply Google Fonts to the entire text theme
        textTheme: GoogleFonts.promptTextTheme(),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const ExpensePage(),
    );
  }
}
