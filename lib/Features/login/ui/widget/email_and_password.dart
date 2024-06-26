import 'package:advanced_test/Features/login/logic/cubit/login_cubit.dart';
import 'package:advanced_test/core/Helpers/spacing.dart';
import 'package:advanced_test/core/widget/doc_text_from_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscuredText = true;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<LoginCubit>().formKey,
        child: Column(
          children: [
            DocTextFormField(
              controller: context.read<LoginCubit>().emailController,
              hinttext: 'Email',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Valid Email';
                }
              },
            ),
            verticalSpace(18),
            DocTextFormField(
              controller: context.read<LoginCubit>().passwordController,
              validator: (value) {
                RegExp regex = RegExp(
                    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                var passNonNullValue = value ?? "";
                if (passNonNullValue.isEmpty) {
                  return ("Password is required");
                } else if (passNonNullValue.length < 6) {
                  return ("Password Must be more than 5 characters");
                } else if (!regex.hasMatch(passNonNullValue)) {
                  return ("Password should contain upper,lower,digit and Special character ");
                }
                return null;
              },
              hinttext: "Password",
              obscureText: isObscuredText,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isObscuredText = !isObscuredText;
                  });
                },
                child: Icon(
                    isObscuredText ? Icons.visibility_off : Icons.visibility),
              ),
            ),
            verticalSpace(24),
          ],
        ));
  }
}
