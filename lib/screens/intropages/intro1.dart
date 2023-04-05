import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Intro1 extends StatefulWidget {
  const Intro1({super.key});

  @override
  State<Intro1> createState() => _Intro1State();
}

class _Intro1State extends State<Intro1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.network(
                'https://assets4.lottiefiles.com/packages/lf20_zrqthn6o.json'),
            const Text(
              'Smart Voice Assistant',
              style: TextStyle(
                  fontFamily: 'Cera Pro', fontSize: 28, color: Colors.white),
            ),
            const Text(
              'Get the best of both worlds with a voice assistant powered by Dall-E and ChatGPT',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Cera Pro', fontSize: 18, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
