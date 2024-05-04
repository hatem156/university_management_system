import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_color_manger.dart';
import '../../../core/constants/app_sizes.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {Key? key,
      required this.text,
      this.onPressed,
      this.minWidth,
      this.color,
      this.child,
      this.margin,
      this.height})
      : super(key: key);
  final String? text;
  final double? minWidth;
  final double? margin;
  final double? height;
  final Color? color;
  final Widget? child;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: height ?? AppSizes.h06,
        width: minWidth ?? AppSizes.w15,
        margin: EdgeInsets.all(margin ?? 12),
        child: MaterialButton(
          minWidth: minWidth ?? AppSizes.w25,
          onPressed: onPressed,
          color: color ?? AppColorManger.primary,
          hoverColor: AppColorManger.primarySecond,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: child ??
              Text(
                text!,
                style: context.textTheme.bodySmall!.copyWith(
                  color: AppColorManger.white,
                ),
              ),
        ),
      ),
    );
  }
}
