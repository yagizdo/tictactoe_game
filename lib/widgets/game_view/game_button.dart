import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tictactoe_app/constants/app_theme.dart';

class GameButton extends StatelessWidget {
  const GameButton(
      {Key? key,
      required this.function,
      required this.child,
      this.backgroundColor,
      this.borderRadius,
      this.height,
      this.width})
      : super(key: key);
  final VoidCallback function;
  final Widget child;
  final double? width;
  final double? height;
  final double? borderRadius;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 150.w,
      height: height ?? 50.w,
      child: ElevatedButton(
        onPressed: function,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor ?? white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 2),
            ),
          ),
        ),
        child: child,
      ),
    );
  }
}
