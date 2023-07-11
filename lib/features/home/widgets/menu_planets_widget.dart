import 'package:flutter/material.dart';

import '../../../core/utils/planets.dart';
import '../controller/home_controller.store.dart';

class MenuPlanets extends StatelessWidget {
  const MenuPlanets({
    super.key,
    required this.store,
  });

  final HomeControllerStore store;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 5,
          color: Colors.grey.withOpacity(0.3),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            40,
          ),
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        height: 110,
        child: GridView.count(
          childAspectRatio: 1.5,
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 0,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            for (var planet in listPlanets.keys.toList())
              GestureDetector(
                onTap: () {
                  store.changeSelectedPlanet(planet);
                },
                child: Image.asset('assets/images/$planet.png'),
              ),
          ],
        ),
      ),
    );
  }
}
