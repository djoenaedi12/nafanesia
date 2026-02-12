import 'package:flutter/material.dart';
import 'package:mobile/core/constants/constant_sizes.dart';
import 'package:mobile/core/themes/theme_colors.dart';

class AtomCard extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final Widget child;
  const AtomCard({super.key, this.padding, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: padding ?? EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: ThemeColors.darkGrey,
        borderRadius: BorderRadius.circular(ConstantSizes.defaultRadius),
        border: Border.all(color: ThemeColors.grey, width: 1),
      ),
      child: child,
    );
  }
}
