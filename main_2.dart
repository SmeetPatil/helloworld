// Basic App 

import 'package:flutter/material.dart';

void main() { runApp(const MyApp()); }
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, home: Home(),); // MaterialApp
  }
}
class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Flutter Demo Home Page"), backgroundColor: Colors.lightBlueAccent,), // AppBar
      body: Center(
        child: TextButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text("Hello",style: TextStyle(color: Colors.black,fontSize: 24)),
                backgroundColor: Colors.green, duration: const Duration(seconds: 5),
                action: SnackBarAction( // Optional: add an action button
                  label: 'Undo', onPressed: () {},) // SnackBarAction
              ));}, // SnackBar
          child: const Text("Hello World!",style: TextStyle(color: Colors.orange,fontSize: 24)),
        ),), // TextButton // Center
    ); // Scaffold
  }
}
