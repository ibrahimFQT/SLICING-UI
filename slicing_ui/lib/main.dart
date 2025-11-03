import 'package:flutter/material.dart';
import 'package:slicing_ui/halaman/splashscreen.dart';
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
      title: 'Slicing UI',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: SplashScreen(), 
    );
  }
}