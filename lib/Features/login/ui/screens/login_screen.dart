import 'package:advanced_test/Features/login/ui/widget/already_have_account.dart';
import 'package:advanced_test/Features/login/ui/widget/term_condition.dart';
import 'package:advanced_test/core/widget/doc_text_bottom.dart';
import 'package:advanced_test/core/widget/doc_text_from_field.dart';
import 'package:advanced_test/core/Helpers/spacing.dart';
import 'package:advanced_test/core/theming/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formkey = GlobalKey();
  bool isObscuredText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Welcome Back",
                  style: CustomTextStyles.font24blueBold,
                ),
                verticalSpace(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: CustomTextStyles.font14grey,
                ),
                verticalSpace(36),
                Form(
                    key: formkey,
                    child: Column(
                      children: [
                        const DocTextFormField(hinttext: 'Email'),
                        verticalSpace(18),
                        DocTextFormField(
                          hinttext: "Password",
                          obscureText: isObscuredText,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isObscuredText = !isObscuredText;
                              });
                            },
                            child: Icon(isObscuredText
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                        ),
                        verticalSpace(24),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Forgot Password?',
                            style: CustomTextStyles.font12mainblueregular,
                          ),
                        ),
                        verticalSpace(40),
                        DocTextButton(
                            buttonText: 'login',
                            textStyle: CustomTextStyles.font32WhiteBold,
                            onPressed: () {}),
                        verticalSpace(16),
                        const TermCondition(),
                        verticalSpace(60),
                        AlreadyHaveAccount()
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
