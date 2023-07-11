import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(context, '/home');
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 35,
          vertical: 5,
        ),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0XFF323653),
              Color(0xff61637A)
            ], // Cores do gradiente
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: const Text(
          'FLY',
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
