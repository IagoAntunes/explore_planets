import 'package:flutter/material.dart';

import '../controller/home_controller.store.dart';

class ImagePlanet extends StatelessWidget {
  const ImagePlanet({
    super.key,
    required this.store,
  });

  final HomeControllerStore store;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: AspectRatio(
        aspectRatio: 2,
        child: Image.asset(
          'assets/images/${store.selectedPlanet}_big.png',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
