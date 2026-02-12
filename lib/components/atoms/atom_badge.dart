import 'package:flutter/material.dart';
import 'package:mobile/components/atoms/atom_text.dart';
import 'package:mobile/core/constants/constant_sizes.dart';
import 'package:mobile/core/themes/theme_colors.dart';

enum AtomBadgeVariant { success, error, warning, info }

class AtomBadge extends StatelessWidget {
  final Widget child;
  const AtomBadge._({required this.child});

  factory AtomBadge.text({
    required String label,
    required AtomBadgeVariant variant,
  }) {
    final badgeColor = _getBadgeColors(variant);
    return AtomBadge._(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: badgeColor.background,
          borderRadius: BorderRadius.circular(ConstantSizes.defaultRadius),
        ),
        child: AtomText.bodySmall(label, TextAlign.center, badgeColor.text),
      ),
    );
  }

  factory AtomBadge.icon({
    required IconData icon,
    required AtomBadgeVariant variant,
  }) {
    final badgeColor = _getBadgeColors(variant);
    return AtomBadge._(
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: badgeColor.background,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(icon, color: badgeColor.text, size: 24),
      ),
    );
  }

  static _AtomBadgeColors _getBadgeColors(AtomBadgeVariant variant) {
    switch (variant) {
      case AtomBadgeVariant.success:
        return _AtomBadgeColors(
          background: ThemeColors.success.withValues(alpha: 0.2),
          text: ThemeColors.success,
        );
      case AtomBadgeVariant.error:
        return _AtomBadgeColors(
          background: ThemeColors.error.withValues(alpha: 0.2),
          text: ThemeColors.error,
        );
      case AtomBadgeVariant.warning:
        return _AtomBadgeColors(
          background: ThemeColors.warning.withValues(alpha: 0.2),
          text: ThemeColors.warning,
        );
      case AtomBadgeVariant.info:
        return _AtomBadgeColors(
          background: ThemeColors.info.withValues(alpha: 0.2),
          text: ThemeColors.info,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return child;
  }
}

class _AtomBadgeColors {
  final Color background;
  final Color text;

  _AtomBadgeColors({required this.background, required this.text});
}
