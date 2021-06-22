import 'package:avenirmetro/src/config/decoration.config.dart';
import 'package:flutter/material.dart';

class AnnuaireAdd extends StatefulWidget {
  AnnuaireAdd({Key key}) : super(key: key);

  @override
  _AnnuaireAddState createState() => _AnnuaireAddState();
}

class _AnnuaireAddState extends State<AnnuaireAdd> {
  var addPrenom;
  var addNom;
  var addPoste;
  var addEmail;
  var addTelephone;
  var space = 14.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 32.0, 24.0, 32.0),
        child: ListView(
          children: [
            InputConfig(
                hint: 'Prénom',
                errorMessage: 'SVP écrivez le Prénom',
                onChangeValue: addPrenom),
            SizedBox(
              height: space,
            ),
            InputConfig(
                hint: 'Nom',
                errorMessage: 'SVP écrivez le nom',
                onChangeValue: addNom),
            SizedBox(
              height: space,
            ),
            InputConfig(
                hint: 'Poste Ocuppé',
                errorMessage: 'SVP écrivez le Poste',
                onChangeValue: addPoste),
            SizedBox(
              height: space,
            ),
            InputConfig(
                hint: 'Email',
                errorMessage: "SVP écrivez l'email",
                onChangeValue: addEmail),
            SizedBox(
              height: space,
            ),
            InputConfig(
                hint: 'Téléphone',
                errorMessage: 'SVP écrivez le Téléphone',
                onChangeValue: addTelephone),
          ],
        ),
      ),
    );
  }
}
