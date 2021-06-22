import 'package:flutter/material.dart';

import 'annuaire_add.dart';

class Annuaire extends StatefulWidget {
  Annuaire({Key key}) : super(key: key);

  @override
  AnnuaireState createState() => AnnuaireState();
}

class AnnuaireState extends State<Annuaire> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        //  //le chemin de la page buton add Annuaire
                        AnnuaireAdd()));
          },
          child: const Icon(Icons.add),
          backgroundColor: Colors.blue,
        ));
  }
}
