import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_counter_bloc/counter_observer.dart';
import 'app.dart';

void main() {
  Bloc.observer = CounterObserver();
  runApp(const CounterApp());
}


