import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'backend_event.dart';
part 'backend_state.dart';

class BackendBloc extends Bloc<BackendEvent, BackendState> {
  List<String> gameList = List.filled(9, '', growable: false);
  String currentPlayer = 'X';
  List<List<int>> winningList = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6],
  ];
  BackendBloc() : super(BackendInitial()) {
    on<BackendEvent>((event, emit) {});

    on<ClickEvent>((event, emit) {
      gameList[event.index] = currentPlayer;
      emit(GameState(gameList));

      for (var winningPos in winningList) {
        String playerPosition0 = gameList[winningPos[0]];
        String playerPosition1 = gameList[winningPos[1]];
        String playerPosition2 = gameList[winningPos[2]];

        if (playerPosition0.isNotEmpty) {
          if (playerPosition0 == playerPosition1 &&
              playerPosition0 == playerPosition2) {
            emit(WinState(currentPlayer));
            print('Kaznadi : $currentPlayer');
            return;
          }
        }
      }
      currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
    });
  }
}
