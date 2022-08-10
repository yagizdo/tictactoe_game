import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tictactoe_app/constants/app_assets.dart';

import '../routes.dart';
import '../widgets/game_view/game_button.dart';
import '../widgets/gradient_background.dart';

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
                // Settings Button
                Positioned(
                  left: 320.w,
                  top: 50.h,
                  child: IconButton(
                    icon: Icon(
                      Icons.settings,
                      size: 25.w,
                    ),
                    onPressed: () {},
                  ),
                ),

                // X Vector
                Positioned(
                  right: 110.w,
                  top: 95.h,
                  child: SvgPicture.asset(AppAsset.xVector),
                ),

                // O Vector
                Positioned(
                  left: 210.w,
                  child: SvgPicture.asset(AppAsset.oVector),
                ),

                // Game title and button section
                Align(
                  child: Column(
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
                        'Welcome Mr. Stark',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      SizedBox(height: 30.h),
                      GameButton(
                        function: () {
                          Navigator.pushReplacementNamed(
                              context, Routes.gameViewRoute);
                        },
                        borderRadius: 20.sp,
                        width: 200.w,
                        backgroundColor: Colors.yellow,
                        child: const Text('Start Game'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
