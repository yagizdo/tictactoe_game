import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:tictactoe_app/constants/app_theme.dart';

class GridBox extends StatelessWidget {
  const GridBox({Key? key, required this.value}) : super(key: key);
  final String value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.w),
      child: Container(
        decoration: const BoxDecoration(
          color: white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Center(
            child: value.isEmpty
                ? const SizedBox()
                : SimpleShadow(
                    color: value.contains('x') ? lightBlue : Colors.red,
                    offset: const Offset(3, 3),
                    child: SvgPicture.asset(
                      value,
                      width: 60.w,
                    ),
                  )),
      ),
    );
  }
}
