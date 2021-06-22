import 'package:flutter/material.dart';

class InputConfig extends StatefulWidget {
  final String hint;
  final String errorMessage;
  var onChangeValue;

  InputConfig(
      {Key key,
      @required this.hint,
      @required this.errorMessage,
      @required this.onChangeValue})
      : super(key: key);

  @override
  _InputConfigState createState() => _InputConfigState();
}

class _InputConfigState extends State<InputConfig> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: widget.hint,
        border: OutlineInputBorder(),
      ),
      validator: (value) =>
          value == null || value.isEmpty ? widget.errorMessage : null,
      onChanged: (value) => setState(() => widget.onChangeValue = value),
    );
  }
}
