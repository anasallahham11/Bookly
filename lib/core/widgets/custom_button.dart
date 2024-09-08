import 'package:bookly/core/utils/style_manager.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key,  this.borderRadius, required this.text, required this.textColor, required this.backgroundColor,  this.fontSize}) : super(key: key);

  final BorderRadius? borderRadius;
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: (){},
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(12)
            )
          ),
          child: Text(
              text,
            style: getBoldStyle(color: textColor).copyWith(fontSize: fontSize),
          )
      ),
    );
  }
}
