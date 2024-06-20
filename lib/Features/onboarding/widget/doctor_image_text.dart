import 'package:advanced_test/core/theming/style.dart';
import 'package:flutter/material.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withOpacity(0.0)],
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              stops: [0.14, 0.4],
            ),
          ),
          child: Image.asset('assets/images/Image.png'),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 30,
          child: Text(
            '''Best Doctor\nAppointment App''',
            style: CustomTextStyles.font32blueBold.copyWith(height: 1.4),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
