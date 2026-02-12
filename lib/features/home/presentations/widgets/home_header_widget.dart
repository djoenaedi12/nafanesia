import 'package:flutter/material.dart';
import 'package:mobile/components/atoms/atom_badge.dart';
import 'package:mobile/components/atoms/atom_text.dart';
import 'package:mobile/core/themes/theme_colors.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      crossAxisAlignment: .center,
      children: [
        Column(
          crossAxisAlignment: .start,
          spacing: 2,
          children: [
            AtomText.bodyMedium(
              'Selamat Pagi,',
              TextAlign.left,
              ThemeColors.grey,
            ),
            AtomText.heading2(
              'Junjun Junaedi',
              TextAlign.left,
              ThemeColors.white,
            ),
            AtomBadge.text(
              variant: AtomBadgeVariant.primary,
              label: 'Sofware Engineer',
            ),
          ],
        ),
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                'https://avatars.githubusercontent.com/u/34117293?v=4',
                width: 48,
              ),
            ),
            Positioned(
              bottom: 2,
              right: 2,
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: ThemeColors.primary,
                  shape: BoxShape.circle,
                  border: Border.all(width: 1, color: ThemeColors.black),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
