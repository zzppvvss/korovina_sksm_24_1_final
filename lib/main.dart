import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:korovina_sksm_24_1/screens/tabs.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

ThemeData createTheme() {
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: const Color.fromARGB(255, 69, 41, 145)
    ),
    textTheme: GoogleFonts.latoTextTheme(),
  );
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    ProviderScope(
      child: MaterialApp(
        theme: createTheme(),
        home: const TabsScreen(),
      ),
    ),
  );
}
