import 'package:flutter/material.dart';
import 'package:flutter_youtube/core/injection.dart';
import 'package:flutter_youtube/core/router.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter YouTube',
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: const Color(0xFFF7A269),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFF7A269),
          primary: const Color(0xFFF7A269),
        ),
      ),
    );
  }
}
