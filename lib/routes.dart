import 'package:flutter/material.dart';
import 'package:tictactoe_app/view/game_view.dart';
import 'package:tictactoe_app/view/start_view.dart';

class Routes {
  static const gameViewRoute = '/gameView';
  static const startViewRoute = '/startView';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case startViewRoute:
        return MaterialPageRoute(builder: (_) => const StartView());
      case gameViewRoute:
        return MaterialPageRoute(builder: (_) => const GameView());
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
