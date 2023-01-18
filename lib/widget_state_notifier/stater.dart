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
