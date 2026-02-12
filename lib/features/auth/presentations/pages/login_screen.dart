import 'package:flutter/material.dart';
import 'package:mobile/core/constants/constant_sizes.dart';
import 'package:mobile/features/auth/presentations/cubit/login_cubit.dart';
import 'package:mobile/features/auth/presentations/widgets/login_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with LoginCubit {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(ConstantSizes.defaultPadding),
        child: Center(
          child: LoginForm(
            emailController: emailController,
            passwordController: passwordController,
            onLoginPressed: () => onLoginPressed(context),
            onRegisterPressed: () => onRegisterPressed(context),
          ),
        ),
      ),
    );
  }
}
