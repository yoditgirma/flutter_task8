import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app/counter/bloc/counter_event.dart';
import 'package:flutter_bloc_app/counter/bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  Timer? _timer;
  CounterBloc() : super(CounterState(counter: 0)) {
    // TASK 1
    on<IncrementCounterEvent>((event, emit) {
      emit(CounterState(counter: state.counter + 1));
    });

    on<DecrementCounterEvent>((event, emit) {
      emit(CounterState(counter: state.counter - 1));
    });

    on<ResetEvent>((event, emit) {
      emit(CounterState(counter: 0));
    });

    // TASK 2
    on<IncrementByValueEvent>((event, emit) {
      emit(CounterState(counter: state.counter + event.value));
    });
    on<DecrementByValueEvent>((event, emit) {
      emit(CounterState(counter: state.counter - event.value));
    });

    // TASK 3
    on<StartTimerEvent>((event, emit) {
      _timer?.cancel();
      _timer = Timer.periodic(Duration(seconds: 1), (_) {
        final current = state.counter;
        emit(CounterState(counter: current + 1));
      });
    });

    on<StopTimerEvent>((event, emit) {
      _timer?.cancel();
    });
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
