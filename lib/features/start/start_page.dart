import 'package:flutter/material.dart';
import 'package:planets_info/features/home/controller/home_controller.store.dart';

class StartPage extends StatelessWidget {
  StartPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff323653),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background_start.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: const BoxDecoration(
                  color: Color(0xff323653),
                ),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: const TextSpan(
                      text: 'Explore The ',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Solar',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.amber,
                          ),
                        ),
                        TextSpan(
                          text: ' System.',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Expanded(child: SizedBox()),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
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
      ),
    );
  }
}
