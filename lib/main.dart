import 'package:event_app_design_ui/screen2.dart';
import 'package:flutter/material.dart';


void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
// UI design has been Completed
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen2(),
    );
  }
}
