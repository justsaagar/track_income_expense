import 'package:flutter/material.dart';
import 'package:income_expense_track/widgets/app_theme.dart';

class AppText extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? fontColor;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int maxLines;
  final double? wordSpacing;

  const AppText({
    Key? key,
    @required this.text,
    this.fontSize,
    this.fontWeight,
    this.fontColor,
    this.textAlign,
    this.overflow = TextOverflow.ellipsis,
    this.maxLines = 1,
    this.wordSpacing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      overflow: overflow,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
        fontFamily: AppTheme.defaultFont,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: fontColor,
        wordSpacing: wordSpacing,
      ),
    );
  }
}
