import 'package:flutter/material.dart';

import 'state_builder.dart';

class Stater<T> {
  final GlobalKey<StateBuilderState> _stateKey = GlobalKey();
  late T _value;
  Stater({T? value}) {
    if (value != null) _value = value;
  }

  Stater copy() {
    return Stater(value: _value);
  }

  set value(T value) {
    _value = value;
    updateState();
  }

  T get value => _value;

  void updateState() => key.currentState?.updateState();

  GlobalKey<StateBuilderState> get key => _stateKey;
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Stater<int> _count = Stater(value: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Application')),
      body: Center(
        child: StateBuilder(
          _count,
          builder: (stater) => Text(stater.value),
        ),
      ),
    );
  }
}
