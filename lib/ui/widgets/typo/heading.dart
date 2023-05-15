import 'package:complaint_raiser/constants/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget heading(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: AppThemes.contentMargin),
    child: Text(
      text,
      style: GoogleFonts.merienda(
          color: AppThemes.secondaryColor,
          fontSize: 20,
          fontWeight: FontWeight.bold),
    ),
  );
}
