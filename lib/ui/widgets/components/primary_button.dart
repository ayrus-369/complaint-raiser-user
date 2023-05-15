import 'package:flutter/material.dart';

import '../../../constants/app_themes.dart';

Widget primaryButton({required String title, void Function()? onPressed}) {
  return SizedBox(
    height: 60,
    width: double.infinity,
    child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0))),
            elevation: MaterialStateProperty.all(0),
            backgroundColor:
                MaterialStateProperty.all<Color>(AppThemes.primaryColor)),
        child: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: AppThemes.backgroundColor),
        ),
        onPressed: onPressed),
  );
}
