import 'package:advanced_test/core/theming/style.dart';
import 'package:flutter/material.dart';

class TermCondition extends StatelessWidget {
  const TermCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
              text: 'By logging, you agree to our',
              style: CustomTextStyles.font11greyregular),
          TextSpan(
              text: ' Terms & Conditions',
              style: CustomTextStyles.font11darkblue),
          TextSpan(
              text: ' and ',
              style: CustomTextStyles.font11greyregular.copyWith(height: 1.5)),
          TextSpan(
              text: ' PrivacyPolicy', style: CustomTextStyles.font11darkblue)
        ]));
  }
}
