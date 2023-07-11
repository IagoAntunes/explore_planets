import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  color: Appcolors.amber,
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
    );
  }
}
