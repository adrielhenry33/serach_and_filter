import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Search Filter"),
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white, 
            fontSize: 25
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //
  final List<Map<String , dynamic>> _allUsers  = [
    {"id:": 1, "name" : "Adriel", "age": 25}
  ]

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}