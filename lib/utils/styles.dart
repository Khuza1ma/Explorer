import 'package:explorer/utils/colors.dart';
import 'package:flutter/material.dart';

ButtonStyle borderedButtonStyle = ButtonStyle(
  elevation: MaterialStateProperty.all(0),
  backgroundColor: MaterialStateProperty.all(Colors.white),
  shape: MaterialStateProperty.all(RoundedRectangleBorder(
    side: const BorderSide(color: AppColors.kFF7235),
    borderRadius: BorderRadius.circular(10),
  )),
); // RoundedRectangleBorder // ButtonStyle
