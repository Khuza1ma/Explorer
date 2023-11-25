import 'package:flutter/material.dart';
import '../utils/colors.dart';


enum MainButtonType { main }

class MainButton extends StatelessWidget {
  MainButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.type = MainButtonType.main,
    this.hasBottomMargin = true,
    this.isDisable = false,
    this.borderRadius,
    this.borderSide,
    this.minimumSize,
    this.buttonColor = AppColors.kFF7235,
    this.fontColor = AppColors.kFFFFFF,
    this.padding,
    this.margin,
    this.alignment,
  }) {
    _child = Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        color: fontColor,
      ),
    );
  }

  MainButton.icon({
    required this.onPressed,
    required Widget icon,
    this.text = '',
    Widget? child,
    this.type = MainButtonType.main,
    this.hasBottomMargin = false,
    this.isDisable = false,
    this.borderRadius,
    this.borderSide,
    this.minimumSize,
    this.buttonColor = AppColors.kFF7235,
    this.fontColor = AppColors.kFFFFFF,
    this.padding,
    this.margin,
    this.alignment,
    double horizontalSpace = 12,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center,
    super.key,
  }) {
    _child = Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: MainAxisSize.min,
      children: [
        child ?? const SizedBox.shrink(),
        if(text.isNotEmpty && child == null)
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: fontColor,
            ),
          ),
        SizedBox(width: horizontalSpace),
        icon,
      ],
    );
  }

  Widget? _child;

  final Function onPressed;
  final String text;
  final MainButtonType type;
  final bool hasBottomMargin;
  final BorderRadiusGeometry? borderRadius;
  final BorderSide? borderSide;
  final Size? minimumSize;
  final Color buttonColor;
  final Color fontColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final AlignmentGeometry? alignment;
  final bool isDisable;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: margin ?? (hasBottomMargin
            ? const EdgeInsets.only(bottom: 20)
            : EdgeInsets.zero),
        child: ElevatedButton(
          onPressed: isDisable?null:() => onPressed.call(),
          style: ElevatedButton.styleFrom(
            padding: padding ?? EdgeInsets.zero,
            backgroundColor: isDisable ? AppColors.kE5E5E5 : buttonColor,
            shadowColor: Colors.transparent,
            alignment: alignment,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(12),
              side: borderSide ?? BorderSide.none,
            ),
            minimumSize: minimumSize ??
                Size(
                  screenSize.width * 0.83,
                  56,
                ),
          ),
          child: _child ?? SizedBox.shrink(),
        ),
      ),
    );
  }
}
