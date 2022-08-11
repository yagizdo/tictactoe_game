import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'backend_event.dart';
part 'backend_state.dart';

class BackendBloc extends Bloc<BackendEvent, BackendState> {
  List<String> gameList = List.filled(9, '', growable: false);
  String currentPlayer = 'X';
  BackendBloc() : super(BackendInitial()) {
    on<BackendEvent>((event, emit) {});

    on<ClickEvent>((event, emit) {
      gameList[event.index] = currentPlayer;
      emit(GameState(gameList));
      currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
    });
  }
}
