import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/components/atoms/atom_badge.dart';
import 'package:mobile/components/atoms/atom_card.dart';
import 'package:mobile/components/atoms/atom_text.dart';
import 'package:mobile/core/themes/theme_colors.dart';

class HomeLocationWidget extends StatelessWidget {
  const HomeLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AtomCard(
      child: Row(
        children: [
          AtomBadge.icon(
            icon: CupertinoIcons.paperplane_fill,
            variant: AtomBadgeVariant.primary,
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: .start,
            children: [
              AtomText.bodySmall(
                'LOKASI SAAT INI',
                TextAlign.left,
                ThemeColors.grey,
              ),
              AtomText.bodySmall(
                'Cilebut, Kab. Bogor',
                TextAlign.left,
                ThemeColors.white,
              ),
            ],
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.refresh_rounded),
            color: ThemeColors.white,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
