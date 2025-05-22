import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
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

    {"id": 1, "name": "Adriel", "age": 25},
    {"id": 2, "name": "Bianca", "age": 30},
    {"id": 3, "name": "Carlos", "age": 22},
    {"id": 4, "name": "Diana", "age": 27},
    {"id": 5, "name": "Eduardo", "age": 35},
    {"id": 6, "name": "Fernanda", "age": 29},
    {"id": 7, "name": "Gabriel", "age": 24},
    {"id": 8, "name": "Helena", "age": 31},
    {"id": 9, "name": "Igor", "age": 26},
    {"id": 10, "name": "Juliana", "age": 28}

  ];

List<Map<String , dynamic>> _foundUsers  = [];
  @override

  void initState(){
    super.initState();
    _foundUsers = _allUsers;
  }

//função que é chamada quando o text field é mudado

  void _runFilter(String enteredKeyword) {
  List<Map<String, dynamic>> results = [];
  if (enteredKeyword.isEmpty) {
    results = _allUsers;
  } else {
    results = _allUsers
        .where((user) => user["name"]
            .toLowerCase()
            .contains(enteredKeyword.toLowerCase()))
        .toList();
  }

  setState(() {
    _foundUsers = results;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Search Filter"),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.white, 
          fontSize: 25
        ),
      ),
    );
  }
}