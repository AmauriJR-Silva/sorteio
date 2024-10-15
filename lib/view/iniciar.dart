import 'package:flutter/material.dart';

class Iniciar extends StatefulWidget {
  const Iniciar({super.key});

  @override
  State<Iniciar> createState() => _IniciarState();
}

class _IniciarState extends State<Iniciar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
        backgroundColor: const Color.fromARGB(255, 255, 208, 0),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Center(
            child: Image(
              image: AssetImage('assets/images/logo.jpg'),
              fit: BoxFit.cover,
              width: 250,
              height: 100,
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/jogar');
              },
              child: const Text('Iniciar'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 208, 0),
                foregroundColor: Colors.white,
                minimumSize: const Size(90, 50),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
