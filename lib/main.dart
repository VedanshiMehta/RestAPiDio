import 'package:dio_demo/screens/heros_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final kColor = ColorScheme.fromSeed(seedColor: Colors.deepPurple);
void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: kColor,
        scaffoldBackgroundColor: kColor.onPrimaryContainer,
      ),
      home: const HerosListScreen(),
    );
  }
}
