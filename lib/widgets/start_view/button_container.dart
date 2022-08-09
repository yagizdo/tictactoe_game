import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tictactoe_app/constants/app_theme.dart';

class ButtonContainer extends StatelessWidget {
  const ButtonContainer({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 123.w,
        height: 123.h,
        decoration: const BoxDecoration(
          color: white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Center(
          child: SvgPicture.asset(
            image,
            fit: BoxFit.scaleDown,
            height: 100,
            width: 100,
          ),
        ),
      ),
    );
  }
}
