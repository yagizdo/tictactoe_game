import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tictactoe_app/view/game_view.dart';
import 'package:tictactoe_app/view/start_view.dart';

class Routes {
  static const gameViewRoute = '/gameView';
  static const startViewRoute = '/startView';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case startViewRoute:
        return PageTransition(
            child: const StartView(),
            duration: const Duration(milliseconds: 400),
            type: PageTransitionType.size,
            alignment: Alignment.center,
            childCurrent: const StartView());
      case gameViewRoute:
        return PageTransition(
            child: const GameView(),
            duration: const Duration(milliseconds: 600),
            type: PageTransitionType.fade,
            alignment: Alignment.center,
            childCurrent: const GameView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
