import 'package:flutter/material.dart';
import 'package:tugas_navi/home_page.dart';
import 'package:tugas_navi/login_page.dart';
import 'package:tugas_navi/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),

      // Route nya
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/homePage': (context) => const HomePage(),
      },
      
    );
  }
}
