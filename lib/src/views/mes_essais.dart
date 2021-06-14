import 'package:flutter/material.dart';
import 'package:flutter_app/src/models/mes_essais.model.dart';

class MesEssais extends StatefulWidget {
  MesEssais({Key key}) : super(key: key);

  @override
  _MesEssaisState createState() => _MesEssaisState();
}

class _MesEssaisState extends State<MesEssais> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(child: MesEssais(),

      ),
    );
  }
}
