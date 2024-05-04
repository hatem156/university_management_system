import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_color_manger.dart';

class MyCiel extends StatelessWidget {
  const MyCiel({
    super.key,
    required this.text,
    required this.isHeader,
    required this.width,
    required this.isBack,
    this.child,
    this.style,
    this.padding,
    this.color,
    this.borderColor,
    this.borderRadius,
  });
  final String text;
  final int width;
  final bool isHeader;
  final bool isBack;
  final Color? color;
  final Color? borderColor;
  final Widget? child;
  final TextStyle? style;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: width,
      child: Container(
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
        decoration: BoxDecoration(
          color: color ??
              (isBack
                  ? AppColorManger.primary
                  : context.theme.primaryColorDark),
          borderRadius: borderRadius ?? BorderRadius.circular(0),
          // border: isHeader
          //     ? Border.symmetric(
          //         horizontal: BorderSide(
          //           color: borderColor ?? context.theme.primaryColorLight,
          //           width: 5,
          //         ),
          //         vertical: BorderSide(
          //           color: borderColor ?? context.theme.primaryColorLight,
          //           width: 2,
          //         ),
          //       )
          //     : Border.all(
          //         width: 2,
          //         color: borderColor ?? context.theme.primaryColorLight,
          //       ),
        ),
        child: child ??
            Center(
              child: Text(
                text,
                style: style ?? context.textTheme.displayMedium,
                textAlign: TextAlign.center,
              ),
            ),
      ),
    );
  }
}
