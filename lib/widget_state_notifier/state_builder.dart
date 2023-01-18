import 'package:flutter/material.dart';


class StateBuilder extends StatefulWidget {
  const StateBuilder({Key? key, required this.builder}) : super(key: key);
  final WidgetBuilder builder;

  @override
  State<StateBuilder> createState() => StateBuilderState();
}

class StateBuilderState extends State<StateBuilder> {
  void updateState() {
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder.call(context);
  }
}
