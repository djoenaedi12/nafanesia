import 'package:flutter/material.dart';
import 'package:mobile/components/atoms/atom_badge.dart';
import 'package:mobile/components/atoms/atom_button.dart';
import 'package:mobile/components/atoms/atom_card.dart';
import 'package:mobile/components/atoms/atom_text.dart';
import 'package:mobile/core/themes/theme_colors.dart';

class HomeAttendanceStatusWidget extends StatelessWidget {
  const HomeAttendanceStatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AtomCard(
      padding: EdgeInsets.all(0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.all(15),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                AtomText.bodyLargeBold(
                  'Status Absensi',
                  TextAlign.left,
                  ThemeColors.white,
                ),
                AtomBadge.text(
                  variant: AtomBadgeVariant.primary,
                  label: 'SUDAH CHECK-IN',
                ),
              ],
            ),
          ),
          Divider(color: ThemeColors.borderGrey, height: 1),
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: .start,
                  spacing: 8,
                  children: [
                    Row(
                      spacing: 8,
                      children: [
                        Icon(
                          Icons.login_rounded,
                          color: ThemeColors.grey,
                          size: 20,
                        ),
                        AtomText.bodySmall(
                          "JAM MASUK",
                          TextAlign.center,
                          ThemeColors.grey,
                        ),
                      ],
                    ),
                    AtomText.heading2(
                      '08:00',
                      TextAlign.left,
                      ThemeColors.white,
                    ),
                    AtomText.bodySmall(
                      'Tepat Waktu',
                      TextAlign.left,
                      ThemeColors.grey,
                    ),
                  ],
                ),
                Container(width: 1, height: 100, color: ThemeColors.borderGrey),
                Column(
                  crossAxisAlignment: .end,
                  spacing: 8,
                  children: [
                    Row(
                      spacing: 8,
                      children: [
                        Icon(
                          Icons.logout_rounded,
                          color: ThemeColors.grey,
                          size: 20,
                        ),
                        AtomText.bodySmall(
                          "JAM PULANG",
                          TextAlign.center,
                          ThemeColors.grey,
                        ),
                      ],
                    ),
                    AtomText.heading2(
                      '--:--',
                      TextAlign.left,
                      ThemeColors.white,
                    ),
                    AtomText.bodySmall(
                      'Belum Absen',
                      TextAlign.left,
                      ThemeColors.grey,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 15, left: 15, right: 15),
            child: AtomButton.elevated(
              label: 'Check Out Sekarang',
              onPressed: () {},
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 15, left: 15, right: 15),
            child: AtomText.bodySmall(
              'Pastikan Anda berada di area kantor sebelum melakukan absensi',
              TextAlign.center,
              ThemeColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
