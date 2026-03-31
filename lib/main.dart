import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MiApp());
}

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mundo Futbol',
      home: HomeScreen(),
    );
  }
}
