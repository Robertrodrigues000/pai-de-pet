import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLine;

  const AppText({super.key, required this.text, this.style, this.maxLine});

  AppText.tab(this.text, {this.maxLine, super.key})
      : style = GoogleFonts.roboto(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: AppColors.textColor,
        );

  AppText.sessionTitle(this.text, {this.maxLine, super.key})
      : style = GoogleFonts.roboto(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: AppColors.textColor,
        );

  AppText.cadTitle(this.text, {this.maxLine, super.key})
      : style = GoogleFonts.roboto(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: AppColors.textColor,
        );

  AppText.subtitle(this.text, {this.maxLine, super.key})
      : style = GoogleFonts.roboto(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.grey,
        );

  AppText.seeMore(this.text, {this.maxLine, super.key})
      : style = GoogleFonts.roboto(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: AppColors.primary,
        );

  AppText.description(this.text, {this.maxLine, super.key})
      : style = GoogleFonts.roboto(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppColors.grey,
        );

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      maxLines: maxLine,
      // overflow: TextOverflow.ellipsis,
    );
  }
}
