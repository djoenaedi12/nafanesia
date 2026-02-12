import 'package:flutter/material.dart';
import 'package:mobile/core/constants/constant_sizes.dart';
import 'package:mobile/features/auth/presentations/cubit/register_cubit.dart';
import 'package:mobile/features/auth/presentations/widgets/register_form.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> with RegisterCubit {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController nipController = TextEditingController();
  final TextEditingController companyController = TextEditingController();
  final TextEditingController divisionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: Padding(
        padding: EdgeInsets.all(ConstantSizes.defaultPadding),
        child: RegisterForm(
          emailController: emailController,
          passwordController: passwordController,
          fullNameController: fullNameController,
          nipController: nipController,
          companyController: companyController,
          divisionController: divisionController,
          onLoginPressed: () => onLoginPressed(context),
          onRegisterPressed: () => onRegisterPressed(context),
        ),
      ),
    );
  }
}
