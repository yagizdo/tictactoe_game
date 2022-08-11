import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'backend_event.dart';
part 'backend_state.dart';

class BackendBloc extends Bloc<BackendEvent, BackendState> {
  BackendBloc() : super(BackendInitial()) {
    on<BackendEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
