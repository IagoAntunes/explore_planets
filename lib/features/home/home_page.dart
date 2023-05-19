import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:planets_info/core/utils/planets.dart';

import 'controller/home_controller.store.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final HomeControllerStore store = HomeControllerStore();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xff212542),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background_stars.png'),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Observer(builder: (context) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AspectRatio(
                  aspectRatio: 2,
                  child: Image.asset(
                    'assets/images/${store.selectedPlanet}_big.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  padding: const EdgeInsets.all(20),
                  height: size.height * 0.45,
                  width: size.width * 0.8,
                  decoration: const BoxDecoration(
                    color: Color(0xffD74652),
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
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(child: SizedBox()),
                Container(
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
                            child: Container(
                              child: Image.asset('assets/images/$planet.png'),
                            ),
                          ),
                      ],
                    ),
                  ),
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}
