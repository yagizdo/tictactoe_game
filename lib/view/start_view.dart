import 'package:flutter/material.dart';

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
          child: SafeArea(
            child: Align(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'TIC-TAC-TOE',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
