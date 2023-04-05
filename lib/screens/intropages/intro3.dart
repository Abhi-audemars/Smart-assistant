import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Intro3 extends StatefulWidget {
  const Intro3({super.key});

  @override
  State<Intro3> createState() => _Intro3State();
}

class _Intro3State extends State<Intro3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            Lottie.network(
                'https://assets3.lottiefiles.com/packages/lf20_q8ND1A8ibK.json',
                height: 400),
            const Text(
              'ChatGPT',
              style: TextStyle(
                  fontFamily: 'Cera Pro', fontSize: 28, color: Colors.white),
            ),
            const Text(
              'A smarter way to stay organized and informed with ChatGPT',
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
