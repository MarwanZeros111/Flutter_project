import 'package:advanced_test/core/theming/style.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
              text: 'Already have an account yet? ',
              style: CustomTextStyles.font11darkblue),
          TextSpan(
              text: 'Sign Up', style: CustomTextStyles.font11mainblueregular)
        ]));
  }
}
