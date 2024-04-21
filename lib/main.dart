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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dash Board',
      home: DashBoardDesktopLayout(),
    );
  }
}
