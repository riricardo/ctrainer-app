import 'package:flutter/material.dart';
import 'navigation/main_navigation.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CTrainer',
      theme: ThemeData(useMaterial3: true),
      home: const MainNavigation(),
    );
  }
}
