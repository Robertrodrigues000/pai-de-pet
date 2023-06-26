import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../core/theme/app_text.dart';

class CategoryChip extends StatelessWidget {
  final String title;
  final bool isSelected;

  const CategoryChip({
    Key? key,
    required this.title,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Container(
            height: 32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.fromBorderSide(
                BorderSide(
                  color: isSelected ? AppColors.primary : AppColors.grey,
                  width: 0.6,
                ),
              ),
              color: isSelected ? AppColors.primary : Colors.white,
              // image: char.image
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.center,
                child: AppText(
                  text: title,
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: isSelected ? Colors.white : AppColors.textColor,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
