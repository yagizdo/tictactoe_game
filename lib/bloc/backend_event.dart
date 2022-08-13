part of 'backend_bloc.dart';

@immutable
abstract class BackendEvent {}

class ClickEvent extends BackendEvent {
  final int index;

  ClickEvent(this.index);
}

class ResetGameEvent extends BackendEvent {}
