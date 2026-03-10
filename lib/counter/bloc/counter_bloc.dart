import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app/counter/bloc/counter_event.dart';
import 'package:flutter_bloc_app/counter/bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(counter: 0)) {
    on<IncrementCounterEvent>((event, emit) {
      emit(CounterState(counter: state.counter + 1));
    });

    on<DecrementCounterEvent>((event, emit) {
      emit(CounterState(counter: state.counter - 1));
    });

    on<IncrementByValueEvent>((event, emit) {
      emit(CounterState(counter: state.counter + event.value));
    });
    on<DecrementByValueEvent>((event, emit) {
      emit(CounterState(counter: state.counter - event.value));
    });
  }
}
