abstract class CounterEvent {}

class IncrementCounterEvent extends CounterEvent {}

class DecrementCounterEvent extends CounterEvent {}

class IncrementByValueEvent extends CounterEvent {
  final int value;
  IncrementByValueEvent({required this.value});
}

class DecrementByValueEvent extends CounterEvent {
  final int value;
  DecrementByValueEvent({required this.value});
}
