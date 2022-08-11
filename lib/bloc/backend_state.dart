part of 'backend_bloc.dart';

@immutable
abstract class BackendState {}

class BackendInitial extends BackendState {}

class GameState extends BackendState {
  final List<String> gameList;

  GameState(this.gameList);
}

class WinState extends BackendState {
  final String winner;

  WinState(this.winner);
}
