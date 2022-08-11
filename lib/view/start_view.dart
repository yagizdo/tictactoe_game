import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tictactoe_app/constants/app_assets.dart';
import 'package:tictactoe_app/constants/app_theme.dart';
import 'package:tictactoe_app/widgets/start_view/game_and_button.dart';

import '../widgets/gradient_background.dart';
import '../widgets/start_view/settings_dialog.dart';

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

              // Settings Button
              Positioned(
                left: 320.w,
                top: 50.h,
                child: IconButton(
                  icon: Icon(
                    Icons.settings,
                    size: 25.w,
                    color: white,
                  ),
                  onPressed: () {
                    showCustomDialog(context);
                  },
                ),
              ),
              const GameTitleAndButtonSection(),
            ],
          ),
        ),
      ),
    );
  }
}
