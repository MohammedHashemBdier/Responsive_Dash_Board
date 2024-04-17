import 'package:flutter/material.dart';

void main() {
  runApp(const DashBoardApp());
}

class DashBoardApp extends StatelessWidget {
  const DashBoardApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Dash Board',
      home: DashBoardApp(),
    );
  }
}
