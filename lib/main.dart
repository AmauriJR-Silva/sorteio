import 'package:flutter/material.dart';
import 'package:sorteio/view/iniciar.dart';
import 'package:sorteio/view/jogar.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/jogar': (context) => const Jogar(),
        '/iniciar': (context) => const Iniciar(),
        
        
      },
      home: const Iniciar(),
    );
  }
}
