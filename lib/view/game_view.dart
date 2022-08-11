import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tictactoe_app/constants/app_constants.dart';
import 'package:tictactoe_app/routes.dart';
import 'package:tictactoe_app/widgets/game_view/game_button.dart';
import 'package:tictactoe_app/widgets/game_view/game_timer.dart';
import 'package:tictactoe_app/widgets/game_view/grid_list.dart';

import '../widgets/gradient_background.dart';

class GameView extends StatelessWidget {
  const GameView({Key? key}) : super(key: key);

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
          child: SafeArea(
            child: Column(
              children: [
                height50,
                const GameTimer(),
                height30,
                Text(
                  'Player X Turn',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                height40,
                const GridList(),
                height30,
                // Reset Game Button
                GameButton(
                  function: () {},
                  width: 250.w,
                  height: 40.h,
                  borderRadius: 10,
                  child: Text('Reset Game',
                      style: Theme.of(context).textTheme.displayMedium),
                ),

                height20,

                // Return main menu Button
                GameButton(
                  function: () {
                    Navigator.pushReplacementNamed(
                        context, Routes.startViewRoute);
                  },
                  width: 250.w,
                  height: 40.h,
                  borderRadius: 10,
                  backgroundColor: Colors.red,
                  child: Text(
                    'Return main menu',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
