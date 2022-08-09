import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tictactoe_app/constants/app_assets.dart';

import '../widgets/gradient_background.dart';
import '../widgets/start_view/button_container.dart';

class StartView extends StatelessWidget {
  const StartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).colorScheme.primary,
              Theme.of(context).secondaryHeaderColor
            ],
          ),
          child: Align(
            child: Stack(
              children: [
                Positioned(
                  right: 110.w,
                  top: 95.h,
                  child: SvgPicture.asset(AppAsset.xVector),
                ),
                Positioned(
                  left: 210.w,
                  child: SvgPicture.asset(AppAsset.oVector),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'TIC-TAC-TOE',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    SizedBox(
                      height: 150.h,
                    ),
                    Text(
                      'Pick who goes first?',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SizedBox(height: 30.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ButtonContainer(image: AppAsset.xWithUnShadow),
                        ButtonContainer(image: AppAsset.oWithUnShadow),
                      ],
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
