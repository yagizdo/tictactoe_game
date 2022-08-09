import 'package:flutter/material.dart';

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
      child: const Center(
        child: Text('Game view'),
      ),
    ));
  }
}
