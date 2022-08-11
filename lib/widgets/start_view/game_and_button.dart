import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tictactoe_app/constants/app_constants.dart';

import '../../routes.dart';
import '../game_view/game_button.dart';

class GameTitleAndButtonSection extends StatelessWidget {
  const GameTitleAndButtonSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Game title and button section
    return Align(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'TIC-TAC-TOE',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          height150,
          Text(
            'Welcome Mr. Stark',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          height30,
          GameButton(
            function: () {
              Navigator.pushReplacementNamed(context, Routes.gameViewRoute);
            },
            borderRadius: 20.sp,
            width: 200.w,
            backgroundColor: Colors.yellow,
            child: const Text('Start Game'),
          ),
        ],
      ),
    );
  }
}
