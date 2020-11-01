import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_bloc/counter/counter.dart';

class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, state){
          return Center(child: Text("$state", style: textTheme.headline2,));
        },
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            key: const Key("counterView_increment_floatingActionButton"),
              child: const Icon(Icons.add),
              onPressed: () => context.bloc<CounterCubit>().increment(),),
          FloatingActionButton(
            key: const Key("counterView_decrement_floatingActionButton"),
            child: const Icon(Icons.remove),
            onPressed: () => context.bloc<CounterCubit>().decrement(),),
        ],
      ),
    );
  }
}
