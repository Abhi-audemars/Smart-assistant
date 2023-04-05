import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Intro2 extends StatefulWidget {
  const Intro2({super.key});

  @override
  State<Intro2> createState() => _Intro2State();
}

class _Intro2State extends State<Intro2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.network(
                'https://assets5.lottiefiles.com/packages/lf20_bsMaAjKPuo.json'),
            const Text(
              'Dall-E',
              style: TextStyle(
                  fontFamily: 'Cera Pro', fontSize: 28, color: Colors.white),
            ),
            const Text(
              'Get inspired and stay creative with your personal assistant powered by Dall-E',
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
