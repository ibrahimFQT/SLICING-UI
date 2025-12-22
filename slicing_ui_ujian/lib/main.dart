import 'package:flutter/material.dart';
import 'slide.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ErrorWidget.builder = (FlutterErrorDetails details) => const SizedBox();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'ujian slicing ui',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: SlidePage(), 
    );
  }
}