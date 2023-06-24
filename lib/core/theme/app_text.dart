import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle? style;

  const AppText({super.key, required this.text, this.style});

  AppText.tab(this.text, {super.key})
      : style = GoogleFonts.roboto(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: AppColors.primary,
        );

  AppText.sessionTitle(this.text, {super.key})
      : style = GoogleFonts.roboto(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: AppColors.primary,
        );

  AppText.cadTitle(this.text, {super.key})
      : style = GoogleFonts.roboto(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: AppColors.primary,
        );

  AppText.subtitle(this.text, {super.key})
      : style = GoogleFonts.roboto(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.primaryLight,
        );

  AppText.seeMore(this.text, {super.key})
      : style = GoogleFonts.roboto(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: AppColors.secondary,
        );

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
