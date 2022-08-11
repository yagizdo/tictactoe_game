part of 'backend_bloc.dart';

@immutable
abstract class BackendState {}

class BackendInitial extends BackendState {}

class GameState extends BackendState {
  final List<String> gameList;

  GameState(this.gameList);
}
