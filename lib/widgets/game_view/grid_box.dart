import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tictactoe_app/constants/app_assets.dart';
import 'package:tictactoe_app/constants/app_theme.dart';

class GridBox extends StatelessWidget {
  const GridBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: SvgPicture.asset(AppAsset.oWithShadow),
    );
  }
}
