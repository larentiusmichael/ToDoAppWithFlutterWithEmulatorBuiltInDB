import 'package:flutter/material.dart';
import 'package:test_app/pages/todos_page.dart'; // Import your TodosPage widget

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TodosPage(), // Change MyHomePage to TodosPage
    );
  }
}