import 'package:flutter/material.dart';
import 'package:mobile/components/atoms/atom_button.dart';
import 'package:mobile/components/atoms/atom_text.dart';
import 'package:mobile/components/molecules/molecule_text_field.dart';
import 'package:mobile/core/themes/theme_colors.dart';

class RegisterForm extends StatefulWidget {
  final TextEditingController fullNameController;
  final TextEditingController companyController;
  final TextEditingController nipController;
  final TextEditingController divisionController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onLoginPressed;
  final VoidCallback onRegisterPressed;
  const RegisterForm({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.onLoginPressed,
    required this.onRegisterPressed,
    required this.fullNameController,
    required this.companyController,
    required this.nipController,
    required this.divisionController,
  });

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool _isObsecureText = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .start,
        children: [
          AtomText.heading1(
            'Create Account',
            TextAlign.left,
            ThemeColors.white,
          ),
          const SizedBox(height: 16),
          AtomText.bodyLargeBold(
            'Please fill in the details below to register',
            TextAlign.left,
            ThemeColors.grey,
          ),
          const SizedBox(height: 22),
          MoleculeTextField(
            label: 'Full Name',
            hint: 'Enter your full name',
            obsecuretext: false,
            textEditingController: widget.emailController,
            textInputType: TextInputType.emailAddress,
            isReadOnly: false,
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(height: 16),
          MoleculeTextField(
            label: 'Email Address',
            hint: 'Enter your email address',
            obsecuretext: false,
            textEditingController: widget.emailController,
            textInputType: TextInputType.emailAddress,
            isReadOnly: false,
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(height: 16),
          MoleculeTextField(
            label: 'Company',
            hint: 'Select your company',
            obsecuretext: false,
            textEditingController: widget.emailController,
            textInputType: TextInputType.emailAddress,
            isReadOnly: true,
            suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(height: 16),
          MoleculeTextField(
            label: 'NIP',
            hint: 'Enter your NIP',
            obsecuretext: false,
            textEditingController: widget.emailController,
            textInputType: TextInputType.emailAddress,
            isReadOnly: false,
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(height: 16),
          MoleculeTextField(
            label: 'Division',
            hint: 'Enter your division',
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
          AtomButton.elevated(
            label: 'Register',
            onPressed: widget.onRegisterPressed,
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: .center,
            children: [
              AtomText.bodyLargeBold(
                'Already have account?',
                TextAlign.center,
                ThemeColors.white,
              ),
              AtomButton.text(label: 'Login', onPressed: widget.onLoginPressed),
            ],
          ),
        ],
      ),
    );
  }
}
