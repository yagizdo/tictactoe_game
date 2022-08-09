import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          child: SafeArea(
            child: Align(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'TIC-TAC-TOE',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  Text(
                    'Pick who goes first?',
                    style: Theme.of(context).textTheme.subtitle2,
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
            ),
          )),
    );
  }
}
