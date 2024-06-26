import 'package:advanced_test/Features/login/logic/cubit/login_cubit.dart';
import 'package:advanced_test/Features/login/ui/widget/already_have_account.dart';
import 'package:advanced_test/Features/login/ui/widget/email_and_password.dart';
import 'package:advanced_test/Features/login/ui/widget/term_condition.dart';
import 'package:advanced_test/core/widget/doc_text_bottom.dart';

import 'package:advanced_test/core/Helpers/spacing.dart';
import 'package:advanced_test/core/theming/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/login_request_body.dart';
import '../widget/login_block_listener.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                Column(
                  children: [
                    const EmailAndPassword(),
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
                        onPressed: () {
                          validateThenDoLogin(context);
                        }),
                    verticalSpace(16),
                    const TermCondition(),
                    verticalSpace(60),
                    const AlreadyHaveAccount(),
                    const LoginBlockListener()
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // void validateThenDoLogin(BuildContext context) {
  //   if (context.read<LoginCubit>().formKey.currentState!.validate()) {
  //     context.read<LoginCubit>().emitLoginStates(LoginRequestBody(
  //         email: context.read<LoginCubit>().emailController.text,
  //         password: context.read<LoginCubit>().passwordController.text));
  //   }
  // }
  void validateThenDoLogin(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();
    if (loginCubit.formKey.currentState!.validate()) {
      final email = loginCubit.emailController.text;
      final password = loginCubit.passwordController.text;

      // Debugging: Print email and password
      print('Email: $email');
      print('Password: $password');

      loginCubit.emitLoginStates(LoginRequestBody(
        email: email,
        password: password,
      ));
    }
  }
}
