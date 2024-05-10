import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/dash_board_view.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const DashBoardApp(),
    ),
  );
}

class DashBoardApp extends StatelessWidget {
  const DashBoardApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF4EB7F2),
        ),
      ),
      debugShowCheckedModeBanner: false,
      color: Colors.black26,
      title: 'Dash Board',
      home: const DashBoardView(),
    );
  }
}
