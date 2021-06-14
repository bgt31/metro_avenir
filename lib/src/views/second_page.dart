import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  static const tag = "second_page";

  @override
  Widget build(BuildContext context) {
    List<dynamic> arguments = ModalRoute.of(context).settings.arguments;
    int numero = arguments[0];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          numero.toString(),
        ),
      ),
    );
  }
}
