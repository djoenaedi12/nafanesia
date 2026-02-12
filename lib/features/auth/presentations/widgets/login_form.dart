import 'package:flutter/material.dart';
import 'package:mobile/components/atoms/atom_button.dart';
import 'package:mobile/components/atoms/atom_text.dart';
import 'package:mobile/components/molecules/molecule_text_field.dart';
import 'package:mobile/core/themes/theme_colors.dart';

class LoginForm extends StatefulWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onLoginPressed;
  final VoidCallback onRegisterPressed;
  const LoginForm({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.onLoginPressed,
    required this.onRegisterPressed,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _isObsecureText = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .start,
        children: [
          AtomText.heading1('Welcome Back', TextAlign.left, ThemeColors.white),
          const SizedBox(height: 16),
          AtomText.bodyLarge(
            'Sign in to access your dashboard and \ncontinue tracking your attendance efficiently',
            TextAlign.left,
            ThemeColors.grey,
          ),
          const SizedBox(height: 40),
          MoleculeTextField(
            label: 'Email Address',
            hint: 'Enter Your Email Address',
            obsecuretext: false,
            textEditingController: widget.emailController,
            textInputType: TextInputType.emailAddress,
            isReadOnly: false,
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(height: 16),
          MoleculeTextField(
            label: 'Password',
            hint: 'Enter Your Password',
            obsecuretext: _isObsecureText,
            textEditingController: widget.passwordController,
            textInputType: TextInputType.visiblePassword,
            isReadOnly: false,
            textInputAction: TextInputAction.done,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _isObsecureText = !_isObsecureText;
                });
              },
              icon: Icon(
                _isObsecureText
                    ? Icons.visibility_off_rounded
                    : Icons.visibility_rounded,
              ),
            ),
          ),
          const SizedBox(height: 16),
          AtomButton.elevated(label: 'Login', onPressed: widget.onLoginPressed),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: .center,
            children: [
              AtomText.bodyLargeBold(
                "Don't have an account?",
                TextAlign.center,
                ThemeColors.white,
              ),
              AtomButton.text(
                label: 'Register',
                onPressed: widget.onRegisterPressed,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
