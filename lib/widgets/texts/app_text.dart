import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/const/app_const/app_const.dart';

class AppText extends StatelessWidget {
  const AppText({
    super.key,
    required this.data,
    this.fontSize = 16,
    this.textScaleFactor = 0.9,
    this.color,
    this.decorationColor,
    this.fontWeight,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.height,
    this.softWrap,
    this.decoration,
    this.textDirection,
    this.fontFamily,
  });
  final String data;
  final double? fontSize;
  final double textScaleFactor;
  final Color? color;
  final Color? decorationColor;
  final FontWeight? fontWeight;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final double? height;
  final bool? softWrap;
  final TextDecoration? decoration;
  final TextDirection? textDirection;
  final String? fontFamily;
  @override
  Widget build(BuildContext context) {
    return Text(
      data.tr,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      softWrap: softWrap,
      textDirection: textDirection ?? TextDirection.ltr,
      style: Theme.of(context).textTheme.displaySmall?.copyWith(
            height: height,
            fontSize: fontSize,
            color: color,
            fontWeight: fontWeight,
            fontFamily: fontFamily ?? AppConst.urbanist,
            decoration: decoration,
            decorationColor: decorationColor,
          ),
      textScaler: TextScaler.linear(textScaleFactor),
    );
  }
}
