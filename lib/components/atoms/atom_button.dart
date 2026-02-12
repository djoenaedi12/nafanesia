import 'package:flutter/material.dart';
import 'package:mobile/components/atoms/atom_text.dart';
import 'package:mobile/core/constants/constant_sizes.dart';
import 'package:mobile/core/themes/theme_colors.dart';

class AtomButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  const AtomButton._({required this.child, required this.onPressed});

  factory AtomButton.elevated({
    required String label,
    VoidCallback? onPressed,
  }) {
    return AtomButton._(
      onPressed: onPressed,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: ThemeColors.black,
          backgroundColor: ThemeColors.primary,
          minimumSize: Size(double.infinity, 56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ConstantSizes.defaultRadius),
          ),
        ),
        child: AtomText.bodyLargeBold(
          label,
          TextAlign.center,
          ThemeColors.black,
        ),
      ),
    );
  }

  factory AtomButton.outlined({
    required String label,
    VoidCallback? onPressed,
  }) {
    return AtomButton._(
      onPressed: onPressed,
      child: OutlinedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: ThemeColors.primary,
          minimumSize: Size(double.infinity, 56),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 0.5, color: ThemeColors.grey),
            borderRadius: BorderRadius.circular(ConstantSizes.defaultRadius),
          ),
        ),
        child: AtomText.bodyLargeBold(
          label,
          TextAlign.center,
          ThemeColors.primary,
        ),
      ),
    );
  }

  factory AtomButton.text({required String label, VoidCallback? onPressed}) {
    return AtomButton._(
      onPressed: onPressed,
      child: TextButton(
        onPressed: onPressed,
        child: AtomText.bodyLargeBold(
          label,
          TextAlign.center,
          ThemeColors.primary,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
