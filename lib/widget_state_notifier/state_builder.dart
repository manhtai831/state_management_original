import 'package:flutter/material.dart';
import 'package:state_management_original/state_management_original.dart';

typedef OnStaterRebuild = Widget Function(Stater stater);

class StateBuilder extends StatefulWidget {
  const StateBuilder(this.stater, {Key? key, required this.builder}) : super(key: key);
  final OnStaterRebuild builder;
  final Stater stater;
  @override
  State<StateBuilder> createState() => StateBuilderState();
}

class StateBuilderState extends State<StateBuilder> {
  void updateState() {
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder.call(widget.stater);
  }
}
