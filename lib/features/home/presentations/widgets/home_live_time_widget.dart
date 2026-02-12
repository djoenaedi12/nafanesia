import 'package:flutter/material.dart';
import 'package:mobile/components/atoms/atom_text.dart';
import 'package:mobile/core/themes/theme_colors.dart';

class HomeLiveTimeWidget extends StatelessWidget {
  const HomeLiveTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: 10,
        children: [
          AtomText.bodySmall(
            "● LIVE TIME",
            TextAlign.center,
            ThemeColors.primary,
          ),
          Row(
            mainAxisAlignment: .center,
            children: [
              AtomText.liveTime("16:51", TextAlign.center, ThemeColors.white),
              AtomText.liveTime(":", TextAlign.center, ThemeColors.white),
              AtomText.liveTime("27", TextAlign.center, ThemeColors.primary),
            ],
          ),
          AtomText.bodyMedium(
            "Senin, 5 Januari 2026",
            TextAlign.center,
            ThemeColors.white,
          ),
        ],
      ),
    );
  }
}
