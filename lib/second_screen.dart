import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF585960),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back),
            ),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Primeiro Nome'),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Último Nome'),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Data de Nascimento'),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Celular'),
                  ),
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      const Text('Esse número é WhatsApp'),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Adicione aqui a navegação para a próxima tela, se houver.
                    },
                    child: const Text('Próxima Página'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
