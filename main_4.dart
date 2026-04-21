// 8 Widgets

import 'package:flutter/material.dart';

void main() {
  runApp(const MyEightWidgetApp());
}

class MyEightWidgetApp extends StatelessWidget {
  const MyEightWidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. MaterialApp
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      // 2. Scaffold
      home: Scaffold( 
        // 3. AppBar
        appBar: AppBar( 
          // 4. Text
          title: const Text('8 Widgets Demo'), 
          backgroundColor: Colors.indigo,
        ),
        // 5. Center
        body: Center( 
          // 6. Column
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 7. Icon
              const Icon( 
                Icons.flutter_dash,
                size: 100,
                color: Colors.blue,
              ),
              // 8. SizedBox
              const SizedBox(height: 20), 
              const Text(
                'Hello, Flutter!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
