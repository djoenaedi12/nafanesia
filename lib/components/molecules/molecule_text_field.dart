import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/components/atoms/atom_text.dart';
import 'package:mobile/core/constants/constant_sizes.dart';
import 'package:mobile/core/themes/theme_colors.dart';

class MoleculeTextField extends StatelessWidget {
  final String label;
  final String hint;
  final bool obsecuretext;
  final TextEditingController textEditingController;
  final TextInputType textInputType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool isReadOnly;
  final TextInputAction textInputAction;
  const MoleculeTextField({
    super.key,
    required this.label,
    required this.hint,
    required this.obsecuretext,
    required this.textEditingController,
    required this.textInputType,
    this.prefixIcon,
    this.suffixIcon,
    required this.isReadOnly,
    required this.textInputAction,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      spacing: 8,
      children: [
        AtomText.bodyMedium(label, TextAlign.left, ThemeColors.grey),
        TextFormField(
          obscureText: obsecuretext,
          readOnly: isReadOnly,
          controller: textEditingController,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: ThemeColors.grey,
            ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            filled: true,
            fillColor: ThemeColors.black,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(ConstantSizes.defaultRadius),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(ConstantSizes.defaultRadius),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ThemeColors.error, width: .5),
              borderRadius: BorderRadius.circular(ConstantSizes.defaultRadius),
            ),
          ),
        ),
      ],
    );
  }
}
