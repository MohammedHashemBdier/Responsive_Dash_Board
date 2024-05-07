import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/dash_board_desktop_layout.dart';

void main() {
  runApp(const DashBoardApp());
}

class DashBoardApp extends StatelessWidget {
  const DashBoardApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF4EB7F2),
        ),
      ),
      debugShowCheckedModeBanner: false,
      color: Colors.black26,
      title: 'Dash Board',
      home: const DashBoardDesktopLayout(),
    );
  }
}
