import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';
import '../../../core/utils/planets.dart';
import '../controller/home_controller.store.dart';

class DescriptionPlanet extends StatelessWidget {
  const DescriptionPlanet({
    super.key,
    required this.size,
    required this.store,
  });

  final Size size;
  final HomeControllerStore store;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: size.height * 0.45,
      width: size.width * 0.8,
      decoration: const BoxDecoration(
        color: Appcolors.customRed,
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            store.selectedPlanet[0].toUpperCase() +
                store.selectedPlanet.substring(1),
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            listPlanets[store.selectedPlanet],
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
