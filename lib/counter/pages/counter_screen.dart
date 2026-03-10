import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app/counter/bloc/counter_bloc.dart';
import 'package:flutter_bloc_app/counter/bloc/counter_event.dart';
import 'package:flutter_bloc_app/counter/bloc/counter_state.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  TextEditingController valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter counter app')),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Value",
                      hintText: "Enter a number",
                      border: OutlineInputBorder(),
                    ),
                    controller: valueController,
                  ),
                ),
                SizedBox(height: 50),
                Text(
                  '${state.counter}',
                  style: TextStyle(
                    color: state.counter % 2 == 0 ? Colors.blue : Colors.red,
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () =>
                          context.read<CounterBloc>().add(StartTimerEvent()),
                      child: Text('Start'),
                    ),

                    SizedBox(width: 20),

                    ElevatedButton(
                      onPressed: () =>
                          context.read<CounterBloc>().add(StopTimerEvent()),
                      child: Text('Stop'),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: .end,
        children: [
          FloatingActionButton(
            onPressed: () {
              if (valueController.text.isEmpty) {
                context.read<CounterBloc>().add(IncrementCounterEvent());
              } else {
                context.read<CounterBloc>().add(
                  IncrementByValueEvent(value: int.parse(valueController.text)),
                );
              }
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 20),
          FloatingActionButton(
            onPressed: () {
              if (valueController.text.isEmpty) {
                context.read<CounterBloc>().add(DecrementCounterEvent());
              } else {
                context.read<CounterBloc>().add(
                  DecrementByValueEvent(value: int.parse(valueController.text)),
                );
              }
            },
            child: Icon(Icons.remove),
          ),
          SizedBox(height: 20),
          FloatingActionButton(
            onPressed: () => context.read<CounterBloc>().add(ResetEvent()),

            child: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
