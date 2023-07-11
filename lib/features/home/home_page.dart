import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:planets_info/core/utils/colors.dart';
import 'package:planets_info/features/home/widgets/description_planet_widget.dart';
import 'package:planets_info/features/home/widgets/image_planet_widget.dart';
import 'package:planets_info/features/home/widgets/menu_planets_widget.dart';

import 'controller/home_controller.store.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final HomeControllerStore store = HomeControllerStore();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Appcolors.background,
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
                ImagePlanet(store: store),
                const SizedBox(height: 15),
                DescriptionPlanet(size: size, store: store),
                const Expanded(child: SizedBox()),
                MenuPlanets(store: store)
              ],
            );
          }),
        ),
      ),
    );
  }
}
