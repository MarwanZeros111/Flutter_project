import 'package:advanced_test/Features/login/logic/cubit/login_cubit.dart';
import 'package:advanced_test/Features/login/logic/cubit/login_state.dart';
import 'package:advanced_test/core/Helpers/extensions.dart';
import 'package:advanced_test/core/Routing/routes.dart';
import 'package:advanced_test/core/theming/colors.dart';
import 'package:advanced_test/core/theming/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlockListener extends StatelessWidget {
  const LoginBlockListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) {
        return current is Loading || current is Erorr || current is Success;
      },
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            const Center(
              child: CircularProgressIndicator(
                color: ColorsManager.mainblue,
              ),
            );
          },
          success: (data) {
            context.pop();
            context.pushNamed(Routes.homeScren);
          },
          erorr: (erorr) {
            setupErrorState(context, erorr);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: CustomTextStyles.font11darkblue,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: CustomTextStyles.font12mainblueregular,
            ),
          ),
        ],
      ),
    );
  }
}
