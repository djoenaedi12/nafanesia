import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AtomText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextAlign? textAlign;
  const AtomText._({
    required this.text,
    required this.style,
    required this.textAlign,
  });

  factory AtomText.heading1(String text, TextAlign? textAlign, Color? color) {
    return AtomText._(
      text: text,
      style: GoogleFonts.inter(
        fontWeight: FontWeight.w700,
        fontSize: 32,
        color: color,
      ),
      textAlign: textAlign,
    );
  }

  factory AtomText.heading2(String text, TextAlign? textAlign, Color? color) {
    return AtomText._(
      text: text,
      style: GoogleFonts.inter(
        fontWeight: FontWeight.w600,
        fontSize: 24,
        color: color,
      ),
      textAlign: textAlign,
    );
  }

  factory AtomText.bodyLarge(String text, TextAlign? textAlign, Color? color) {
    return AtomText._(
      text: text,
      style: GoogleFonts.inter(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: color,
      ),
      textAlign: textAlign,
    );
  }

  factory AtomText.bodyLargeBold(
    String text,
    TextAlign? textAlign,
    Color? color,
  ) {
    return AtomText._(
      text: text,
      style: GoogleFonts.inter(
        fontWeight: FontWeight.w700,
        fontSize: 16,
        color: color,
      ),
      textAlign: textAlign,
    );
  }

  factory AtomText.bodyMedium(String text, TextAlign? textAlign, Color? color) {
    return AtomText._(
      text: text,
      style: GoogleFonts.inter(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: color,
      ),
      textAlign: textAlign,
    );
  }

  factory AtomText.bodyMediumBold(
    String text,
    TextAlign? textAlign,
    Color? color,
  ) {
    return AtomText._(
      text: text,
      style: GoogleFonts.inter(
        fontWeight: FontWeight.w700,
        fontSize: 14,
        color: color,
      ),
      textAlign: textAlign,
    );
  }

  factory AtomText.bodySmall(String text, TextAlign? textAlign, Color? color) {
    return AtomText._(
      text: text,
      style: GoogleFonts.inter(
        fontWeight: FontWeight.w700,
        fontSize: 12,
        color: color,
      ),
      textAlign: textAlign,
    );
  }

  factory AtomText.bodySmallBold(
    String text,
    TextAlign? textAlign,
    Color? color,
  ) {
    return AtomText._(
      text: text,
      style: GoogleFonts.inter(
        fontWeight: FontWeight.w700,
        fontSize: 12,
        color: color,
      ),
      textAlign: textAlign,
    );
  }

  factory AtomText.liveTime(String text, TextAlign? textAlign, Color? color) {
    return AtomText._(
      text: text,
      style: GoogleFonts.inter(
        fontWeight: FontWeight.w700,
        fontSize: 48,
        color: color,
      ),
      textAlign: textAlign,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(text, style: style, textAlign: textAlign);
  }
}
