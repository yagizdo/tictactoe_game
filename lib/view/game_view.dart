import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                    SizedBox(
                      height: 50.h,
                    ),
                    const GameTimer(),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      'Player X Turn',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    const GridList(),
                  ],
                ),
              ),
            )));
  }
}
