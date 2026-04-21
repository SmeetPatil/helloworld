// Test code (simple clicker)

import 'package:flutter/material.dart';
void main() {
 runApp(const MyApp());
}
class MyApp extends StatelessWidget {
 const MyApp({super.key});
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Flutter Lab Experiment',
     theme: ThemeData(
       primarySwatch: Colors.blue,
     ),
     home: const CounterPage(title: 'Lab Test & Deploy App'),
     debugShowCheckedModeBanner: false,
   );
 }
}
class CounterPage extends StatefulWidget {
 const CounterPage({super.key, required this.title});
 final String title;
 @override
 State<CounterPage> createState() => _CounterPageState();
}
class _CounterPageState extends State<CounterPage> {
 int _counter = 0;
 // Logic separated to make unit testing easy
 void _incrementCounter() {
   setState(() {
     _counter++;
   });
 }
 void _resetCounter() {
   setState(() {
     _counter = 0;
   });
 }
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text(widget.title),
     ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           const Text(
             'You have pushed the button this many times:',
           ),
           Text(
             '$_counter',
             style: Theme.of(context).textTheme.headlineMedium,
           ),
           const SizedBox(height: 20),
           ElevatedButton(
             onPressed: _resetCounter,
             child: const Text('Reset Counter'),
           )
         ],
       ),
     ),
     floatingActionButton: FloatingActionButton(
       onPressed: _incrementCounter,
       tooltip: 'Increment',
       child: const Icon(Icons.add),
     ),
   );
 }
}
