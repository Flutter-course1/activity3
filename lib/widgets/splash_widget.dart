import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [
              Color(0xFF5927FF),
              Color(0xFF8160EF),
            ],
          )),
        ),
        Center(
          child: Container(
              width: 166,
              height: 118,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(59))),
        ),
        Center(
          child: SvgPicture.asset(
            'images/logo.svg',
            height: 78,
            width: 61,
            fit: BoxFit.scaleDown,
          ),
        )
      ],
    );
  }
}
