import 'package:avenirmetro/src/views/home_page/home_pages.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum CreerAffecterEssai { novelEssai, essaiExistant }
CreerAffecterEssai _creerAffecterEssai = CreerAffecterEssai.novelEssai;
bool showEssai = false;
bool showNouvelEssai = true;

enum TypeCreneau { nuitLongue, nuitProlongee, nuitCourte, jour }
TypeCreneau _typeCreneau = TypeCreneau.nuitLongue;

class MesEssaisAddNew extends StatefulWidget {
  final Function addNameCallBack;

  MesEssaisAddNew({Key key, @required this.addNameCallBack}) : super(key: key);

  @override
  _MesEssaisAddNewState createState() => _MesEssaisAddNewState();
}

class _MesEssaisAddNewState extends State<MesEssaisAddNew> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final List<String> names = ['Maxime RUMPLER', 'Vincent MOREAU'];
  final List<String> essais = ['MER 12 (30/05/2021)', 'MER 11 (29/05/2021)'];
  final List<String> lines = ['Ligne A', 'Ligne B'];

  String _currentName;
  String _currentEssai;
  String _currentLine;
  String _typeEssai;

  DateTime _futureDate = DateTime.now().add(Duration(days: 365));
  DateTime _passedDate = new DateTime.now().subtract(Duration(days: 0));

  //Checkbox
  bool isChecked = false;

  //Calendar
  DateTime currentDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime pickedDate = await showDatePicker(
        context: context,
        locale: const Locale("fr", "FR"),
        initialDate: currentDate,
        firstDate: _passedDate,
        lastDate: _futureDate);
    if (pickedDate != null && pickedDate != currentDate)
      setState(() {
        currentDate = pickedDate;
      });
  }

  var newName;
  var newConges;
  var newCreateJoin;
  var newDate;
  var nexEssai;
  var newTypeCreneau;
  var newLieuEssai;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                'Programmer un essai',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.only(top: 14, bottom: 14),
            child: ListView(children: [
              Container(
                  child: Padding(
                      padding: const EdgeInsets.only(left: 32, right: 32),
                      child: Form(
                          key: _formKey,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                // Name
                                Text(
                                  "Nom de l'employé",
                                  style: TextStyle(
                                      color: Colors.blue[700], fontSize: 16),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: DropdownButtonFormField(
                                            value: _currentName,
                                            items: names.map((name) {
                                              return DropdownMenuItem(
                                                value: name,
                                                child: Text('$name'),
                                              );
                                            }).toList(),
                                            onChanged: (value) {
                                              setState(() {
                                                _currentName = value;
                                                newName = value;
                                              });
                                            },
                                            validator: (value) => value ==
                                                        null ||
                                                    value.isEmpty
                                                ? 'SVP choisissez un employé'
                                                : null,
                                          )),
                                      Expanded(
                                          flex: 1,
                                          child: Checkbox(
                                              checkColor: Colors.white,
                                              value: isChecked,
                                              onChanged: (bool value) {
                                                setState(() {
                                                  isChecked = value;
                                                  newConges = value;
                                                });
                                              })),
                                      Expanded(
                                          flex: 1,
                                          child: GestureDetector(
                                              child: Text('Congés'),
                                              onTap: () {
                                                setState(() {
                                                  isChecked = !isChecked;
                                                  newConges = isChecked;
                                                });
                                              }))
                                    ]),
                                SizedBox(
                                  height: 24.0,
                                ),
                                // Création ou affectation
                                Text(
                                  "Création ou affectation",
                                  style: TextStyle(
                                      color: Colors.blue[700], fontSize: 16),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                // Nouvel essai
                                ListTile(
                                    title: GestureDetector(
                                        child: const Text('Novel essai'),
                                        onTap: () {
                                          setState(() {
                                            _creerAffecterEssai =
                                                CreerAffecterEssai.novelEssai;
                                            showEssai = false;
                                            showNouvelEssai = true;
                                          });
                                        }),
                                    leading: Radio<CreerAffecterEssai>(
                                        value: CreerAffecterEssai.novelEssai,
                                        groupValue: _creerAffecterEssai,
                                        onChanged: (CreerAffecterEssai value) {
                                          setState(() {
                                            _creerAffecterEssai = value;
                                            showEssai = false;
                                            showNouvelEssai = true;
                                          });
                                        })),
                                // Ajout de l'employé à un essai existant
                                ListTile(
                                    title: GestureDetector(
                                        child: const Text(
                                            'Ajout de l\'employé à un essai existant'),
                                        onTap: () {
                                          setState(() {
                                            _creerAffecterEssai =
                                                CreerAffecterEssai
                                                    .essaiExistant;
                                            showEssai = true;
                                            showNouvelEssai = false;
                                          });
                                        }),
                                    leading: Radio<CreerAffecterEssai>(
                                        value: CreerAffecterEssai.essaiExistant,
                                        groupValue: _creerAffecterEssai,
                                        onChanged: (CreerAffecterEssai value) {
                                          setState(() {
                                            _creerAffecterEssai = value;
                                            showEssai = true;
                                            showNouvelEssai = false;
                                          });
                                        })),
                                // Si essai existant
                                Visibility(
                                    visible: showEssai,
                                    child: Column(children: [
                                      SizedBox(
                                        height: 24.0,
                                      ),
                                      Row(children: [
                                        Text(
                                          "Essai existant",
                                          style: TextStyle(
                                              color: Colors.blue[700],
                                              fontSize: 16),
                                        )
                                      ]),
                                      SizedBox(
                                        height: 8.0,
                                      ),
                                      DropdownButtonFormField(
                                        value: _currentEssai,
                                        items: essais.map((essai) {
                                          return DropdownMenuItem(
                                            value: essai,
                                            child: Text('$essai'),
                                          );
                                        }).toList(),
                                        onChanged: (value) {
                                          setState(() {
                                            _currentEssai = value;
                                          });
                                        },
                                        validator: (value) => value == null ||
                                                value.isEmpty
                                            ? 'SVP choisissez un essai existant'
                                            : null,
                                      )
                                    ])),
                                // Si nouvel essai
                                Visibility(
                                    visible: showNouvelEssai,
                                    child: Column(children: [
                                      SizedBox(
                                        height: 24.0,
                                      ),
                                      Text(
                                        "Date",
                                        style: TextStyle(
                                            color: Colors.blue[700],
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 8.0,
                                      ),
                                      GestureDetector(
                                        child: Container(
                                            width: double.infinity,
                                            height: 58,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(5),
                                              ),
                                            ),
                                            child: Row(children: [
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10),
                                                  child: Text(
                                                    DateFormat('dd/MM/yyyy')
                                                        .format(currentDate)
                                                        .toString(),
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color:
                                                            Colors.grey[600]),
                                                  ))
                                            ])),
                                        onTap: () => _selectDate(context),
                                      ),
                                      SizedBox(
                                        height: 24.0,
                                      ),
                                      Text(
                                        "Nouvel essai",
                                        style: TextStyle(
                                            color: Colors.blue[700],
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 8.0,
                                      ),
                                      TextFormField(
                                        decoration: const InputDecoration(
                                          hintText: "Type d'essai",
                                          border: OutlineInputBorder(),
                                        ),
                                        validator: (value) =>
                                            value == null || value.isEmpty
                                                ? "SVP écrivez le type d'essai"
                                                : null,
                                        onChanged: (value) =>
                                            setState(() => _typeEssai = value),
                                      ),
                                      SizedBox(
                                        height: 24.0,
                                      ),
                                      Text(
                                        "Type de créneau",
                                        style: TextStyle(
                                            color: Colors.blue[700],
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 8.0,
                                      ),
                                      ListTile(
                                          title: GestureDetector(
                                              child: const Text(
                                                  'Nuit longue (21h30 - 5h30)'),
                                              onTap: () {
                                                setState(() {
                                                  _typeCreneau =
                                                      TypeCreneau.nuitLongue;
                                                });
                                              }),
                                          leading: Radio<TypeCreneau>(
                                              value: TypeCreneau.nuitLongue,
                                              groupValue: _typeCreneau,
                                              onChanged: (TypeCreneau value) {
                                                setState(() {
                                                  _typeCreneau = value;
                                                });
                                              })),
                                      ListTile(
                                          title: GestureDetector(
                                              child: const Text(
                                                  'Nuit Prolongée (23h00 - 7h00)'),
                                              onTap: () {
                                                setState(() {
                                                  _typeCreneau =
                                                      TypeCreneau.nuitProlongee;
                                                });
                                              }),
                                          leading: Radio<TypeCreneau>(
                                              value: TypeCreneau.nuitProlongee,
                                              groupValue: _typeCreneau,
                                              onChanged: (TypeCreneau value) {
                                                setState(() {
                                                  _typeCreneau = value;
                                                });
                                              })),
                                      ListTile(
                                          title: GestureDetector(
                                              child: const Text(
                                                  'Nuit courte (22h00 - 6h00)'),
                                              onTap: () {
                                                setState(() {
                                                  _typeCreneau =
                                                      TypeCreneau.nuitCourte;
                                                });
                                              }),
                                          leading: Radio<TypeCreneau>(
                                              value: TypeCreneau.nuitCourte,
                                              groupValue: _typeCreneau,
                                              onChanged: (TypeCreneau value) {
                                                setState(() {
                                                  _typeCreneau = value;
                                                });
                                              })),
                                      ListTile(
                                          title: GestureDetector(
                                              child: const Text(
                                                  'Jour (9h00 - 18h00)'),
                                              onTap: () {
                                                setState(() {
                                                  _typeCreneau =
                                                      TypeCreneau.jour;
                                                });
                                              }),
                                          leading: Radio<TypeCreneau>(
                                              value: TypeCreneau.jour,
                                              groupValue: _typeCreneau,
                                              onChanged: (TypeCreneau value) {
                                                setState(() {
                                                  _typeCreneau = value;
                                                });
                                              })),
                                      SizedBox(
                                        height: 24.0,
                                      ),
                                      Text(
                                        "Lieu de l'essai",
                                        style: TextStyle(
                                            color: Colors.blue[700],
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 8.0,
                                      ),
                                      DropdownButtonFormField(
                                        value: _currentLine,
                                        items: lines.map((line) {
                                          return DropdownMenuItem(
                                            value: line,
                                            child: Text('$line'),
                                          );
                                        }).toList(),
                                        onChanged: (value) {
                                          setState(() {
                                            _currentLine = value;
                                          });
                                        },
                                        validator: (value) => value == null ||
                                                value.isEmpty
                                            ? 'SVP choisissez une ligne existante'
                                            : null,
                                      )
                                    ])),
                                SizedBox(
                                  height: 42.0,
                                ),
                                //Button
                                GestureDetector(
                                    child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 16.0),
                                        width: double.infinity,
                                        height: 65,
                                        decoration: BoxDecoration(
                                            color: Colors.blue[400],
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(20),
                                            ),
                                            border: Border.all(
                                                color: Colors.blue[200])),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
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
                                    onTap: () async {
                                      print(_typeEssai);
                                      // Validate will return true if the form is valid, or false if
                                      // the form is invalid.
                                      if (_formKey.currentState.validate()) {
                                        // Process data.
                                        if (showNouvelEssai == true) {
                                          //print(newName);
                                          widget.addNameCallBack(newName);
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => HomePage(
                                                selectedIndex: 1,
                                              ),
                                            ),
                                          );
                                        } else {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => HomePage(
                                                  selectedIndex: 1,
                                                ),
                                              ));
                                        }
                                      }
                                    })
                              ]))))
            ])));
  }
}
