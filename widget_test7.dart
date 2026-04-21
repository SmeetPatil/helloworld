// Test cases for the clicker app (run using flutter test)

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:untitled4/main.dart'; // IMPORTANT: Replace 'your_app_name' with your actual project name
void main() {
 group('Counter App Automated Tests', () {
   // Test Case 1: Initial state check
   testWidgets('App starts with counter at 0', (WidgetTester tester) async {
     await tester.pumpWidget(const MyApp());
     expect(find.text('0'), findsOneWidget);
     expect(find.text('1'), findsNothing);});
   // Test Case 2: Incrementing the counter
   testWidgets('Counter increments when + button is tapped', (WidgetTester tester) async {
     await tester.pumpWidget(const MyApp());
     await tester.tap(find.byIcon(Icons.add));
     await tester.pump(); // Rebuild the UI
     expect(find.text('0'), findsNothing);
     expect(find.text('1'), findsOneWidget);});
   // Test Case 3: Multiple increments
   testWidgets('Counter handles multiple increments correctly', (WidgetTester tester) async {
     await tester.pumpWidget(const MyApp());
     await tester.tap(find.byIcon(Icons.add));
     await tester.tap(find.byIcon(Icons.add));
     await tester.tap(find.byIcon(Icons.add));
     await tester.pump();
     expect(find.text('3'), findsOneWidget);});
   // Test Case 4: Resetting the counter
   testWidgets('Reset button sets counter back to 0', (WidgetTester tester) async {
     await tester.pumpWidget(const MyApp());
     // First increment it to 2
     await tester.tap(find.byIcon(Icons.add));
     await tester.tap(find.byIcon(Icons.add));
     await tester.pump();
     expect(find.text('2'), findsOneWidget);
     // Now tap the reset button
     await tester.tap(find.text('Reset Counter'));
     await tester.pump();
     expect(find.text('0'), findsOneWidget);
     expect(find.text('2'), findsNothing);});
   // Test Case 5: UI Elements presence check
   testWidgets('Ensures all key UI elements are present on screen', (WidgetTester tester) async {
     await tester.pumpWidget(const MyApp());
     // Check for App Bar title
     expect(find.text('Lab Test & Deploy App'), findsOneWidget);
     // Check for instructional text
     expect(find.text('You have pushed the button this many times:'), findsOneWidget);
     // Check for buttons
     expect(find.byType(FloatingActionButton), findsOneWidget);
     expect(find.byType(ElevatedButton), findsOneWidget);});});}
