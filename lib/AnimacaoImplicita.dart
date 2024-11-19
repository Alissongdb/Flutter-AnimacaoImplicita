import 'package:flutter/material.dart';

class AnimacaoImplicita extends StatefulWidget {
  const AnimacaoImplicita({super.key});

  @override
  State<AnimacaoImplicita> createState() => _AnimacaoImplicitaState();
}

class _AnimacaoImplicitaState extends State<AnimacaoImplicita> {
  bool _status = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animação Implícita'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 2),
              curve: Curves.elasticOut,
              width: _status ? 200 : 300,
              height: _status ? 300 : 200,
              color: _status ? Colors.white : Colors.purpleAccent,
              child: Center(
                child: Image.asset(
                  "images/logo.png",
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _status = !_status;
                });
              },
              child: const Text('Animar'),
            ),
          ],
        ),
      ),
    );
  }
}
