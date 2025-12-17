import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 186, 253, 172)),
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
              color: Color.fromARGB(255, 183, 248, 153))), // Theme Data

      home: Scaffold(
          appBar: AppBar(
            title: const Text('MyApp'),
          ), // AppBar
          body: Column(
            children: [Text('hello cs mb' ,style: TextStyle(fontSize: 24 ),), 
            Text('kmutnb'), 
            Text('bbk')],
          )), // Scaffold
    ); // MaterialApp
  }
}
