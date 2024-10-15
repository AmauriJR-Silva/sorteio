import 'dart:math';
import 'package:flutter/material.dart';

class Jogar extends StatefulWidget {
  const Jogar({super.key});

  @override
  State<Jogar> createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  int _numeroSorteado = 0;
  final TextEditingController _numeroController = TextEditingController();
  String _resultado = ''; 

  @override
  void initState() {
    super.initState();
    sortearNumero();
  }

  void sortearNumero() {
    Random random = Random();
    setState(() {
      _numeroSorteado = random.nextInt(61); 
    });
    print('o numero sorteado: $_numeroSorteado');
  }

  void compararNumero() {
    int numeroDigitado = int.tryParse(_numeroController.text) ?? 0; 

    if (numeroDigitado == _numeroSorteado) {
      setState(() {
        _resultado = 'parabens voce acertou o numero';
      });
    } else if (numeroDigitado > _numeroSorteado) {
      setState(() {
        _resultado = 'voce passou do numero sorteado';
      });
    } else {
      setState(() {
        _resultado = 'voce esta perto do numero sorteado';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jogar'),
        backgroundColor: const Color.fromARGB(255, 255, 208, 0),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              controller: _numeroController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Digite um número',
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            _resultado,
            style: const TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: compararNumero,
            child: const Text('Sortear'),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 255, 208, 0),
              foregroundColor: Colors.white,
              minimumSize: const Size(90, 50),
            ),
          ),
        ],
      ),
    );
  }
}
