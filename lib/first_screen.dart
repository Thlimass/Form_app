import 'package:flutter/material.dart';
import 'second_screen.dart';

void main() => runApp(const FirstScreen());

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF585960),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/tatu.png", height: 128),
            const Text(
              'Olá, você esta prestes a solicitar seu orçamento'
              'com o @christianItattoo, conte conosco neste'
              'processo!',
              style: TextStyle(fontFamily: 'Poppins', color: Colors.white),
            ),
            const SizedBox(
                height: 100
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: const Color(0xFF585960), shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                ),
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 20.0
                ),
                elevation: 5.0,
                shadowColor: Colors.black,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Solicitar Orçamento'),
                  Icon(Icons.arrow_forward, color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
