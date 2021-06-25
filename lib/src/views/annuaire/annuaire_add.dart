import 'package:flutter/material.dart';
import 'package:flutter_app/src/config/decoration.config.dart';

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
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        color: Colors.grey[100],
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, top: 32.0, right: 24.0),
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
              SizedBox(
                height: 32,
              ),
              GestureDetector(
                  child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      width: double.infinity,
                      height: 65,
                      decoration: BoxDecoration(
                          color: Colors.blue[400],
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          border: Border.all(color: Colors.blue[200])),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Center(
                                child: const Text(
                              'VALIDER',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            )),
                          ])),
                  onTap: () async {})
            ],
          ),
        ),
      ),
    );
  }
}
