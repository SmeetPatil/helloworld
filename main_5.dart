//Navigation Routing and Gestures

import 'package:flutter/material.dart';
void main() {
 runApp(const MyApp());
}
class MyApp extends StatelessWidget {
 const MyApp({super.key});
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Experiment 5',
     theme: ThemeData(
       primarySwatch: Colors.blue,
     ),
     home: const FirstScreen(),
     debugShowCheckedModeBanner: false,
   );
 }
}
class FirstScreen extends StatefulWidget {
 const FirstScreen({super.key});
 @override
 State<FirstScreen> createState() => _FirstScreenState();
}
class _FirstScreenState extends State<FirstScreen> {
 String statusText = "Tap the box to Navigate!";
 Color boxColor = Colors.blue;
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: const Text("Exp 5: Gestures & Navigation")),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text(statusText, style: const TextStyle(fontSize: 18)),
           const SizedBox(height: 20),
           GestureDetector(
             onTap: () {
               setState(() {
                 statusText = "Navigating...";
               });
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => const SecondScreen()),
               );
             },
             onDoubleTap: () {
               setState(() {
                 boxColor = boxColor == Colors.blue ? Colors.red : Colors.blue;
                 statusText = "Double Tap Detected! (Color Changed)";
               });
             },
             child: Container(
               height: 150,
               width: 150,
               decoration: BoxDecoration(
                 color: boxColor,
                 borderRadius: BorderRadius.circular(15),
                 boxShadow: [
                   BoxShadow(
                     color: Colors.grey.withOpacity(0.5),
                     spreadRadius: 5,
                     blurRadius: 7,
                     offset: const Offset(0, 3),
                   ),
                 ],
               ),
               child: const Center(
                 child: Text(
                   "Click Me",
                   style: TextStyle(color: Colors.white, fontSize: 20),
                 ),
               ),
             ),
           ),
         ],
       ),
     ),
   );
 }
}
class SecondScreen extends StatelessWidget {
 const SecondScreen({super.key});
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text("Second Screen"),
       backgroundColor: Colors.green,
     ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           const Text(
             "You have arrived!",
             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
           ),
           const SizedBox(height: 20),
           ElevatedButton(
             onPressed: () {
               // Navigation: Pop (Go Back)
               Navigator.pop(context);
             },
             child: const Text("Go Back"),
           ),
         ],
       ),
     ),
   );
 }
}
