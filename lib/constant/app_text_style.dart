import 'package:flutter/material.dart';
import 'package:prog1/constant/app_colors.dart';

class AppTextStyle {

  static final TextStyle px12blue = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.bold,
    color: AppColors.SecondaryColor,
    fontSize: 12
  );
  static final TextStyle superSmall = TextStyle(
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w400,
      color: AppColors.LightGrayColor,
      fontSize: 11
  );
  static final TextStyle px10blue = TextStyle(
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w400,
      color: AppColors.AzureColor,
      fontSize: 10
  );

}