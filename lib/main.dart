import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GeekStore',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // İSTEK: Renkleri Purple ve Gray olarak ayarlıyoruz
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple, // Ana renk (Butonlar, başlıklar)
          primary: Colors.deepPurple,
          secondary: Colors.grey, // Yardımcı renk
          surface: Colors.grey[100], // Arka planın hafif gri tonu
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
          centerTitle: false,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
