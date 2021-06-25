import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum CreerAffecterEssai { nouvelEssai, essaiExistant }
CreerAffecterEssai _creerAffecterEssai = CreerAffecterEssai.nouvelEssai;
bool showEssai = false;
bool showNouvelEssai = true;

class MesEssais extends StatefulWidget {
  final bool isDarkMode;

  MesEssais({Key key, this.isDarkMode}) : super(key: key);

  @override
  _MesEssaisState createState() => _MesEssaisState();
}

class _MesEssaisState extends State<MesEssais> {
  var light = Colors.grey[100];
  var dark = Colors.black87;
  bool backgroundColor = true;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  List _nouvelEssaiItems = [];

  final List<String> names = [
    'Maxime RUMPLER',
    'Vincent MOREAU',
    'Clément BERGEOT'
  ];
  final List<String> essais = ['MER 12 (30/05/2021)', 'MER 11 (29/05/2021)'];
  final List<String> typesCreneaux = [
    'Nuit longue (21h30 - 5h30)',
    'Nuit prolongée (23h00 - 7h00)',
    'Nuit courte (22h00 - 6h00)',
    'Jour (9h00 - 18h00)',
  ];
  final List<String> lines = ['Ligne A', 'Ligne B'];

  String _currentName;
  String _currentEssai;
  String _currentTypeCreneau;
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
  void initState() {
    super.initState();

    //this._fetchNouvelEssaiItems();
  }

  /*void _fetchNouvelEssaiItems() async {
    */ /*var res = await http.get(AuthStrings.baseUrl +
          'v1/pontosRecargas?access_token=' +
          token.accessToken.toString());*/ /*
    if (mounted) {
      this.setState(() {
        //_nouvelEssaiItems = json.decode(res.body);
        _nouvelEssaiItems = [
          _currentName,
          isChecked,
          _creerAffecterEssai,
          currentDate,
          _typeEssai,
          _typeCreneau,
          _currentLine
        ];
        print(_nouvelEssaiItems);
      });
    }
  }*/

  // This will be called each time the + button is pressed
  //variable
  void _addTodoItem(var task, var line, var date, var time) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    // pref.setString('string', "Geno Tech");

    //String Stringval = pref.setString('task', 'line');

    // Only add the task if the user actually entered something
    if (mounted) {
      this.setState(() {
        //if (task.length > 0) {
        setState(() {
          _nouvelEssaiItems.add(task + ',' + line + ',' + date + ',' + time);
        });
        print(_nouvelEssaiItems);
        //}
      });
    }
  }

  // Build the whole list of todo items
  Widget _buildTodoList() {
    return new ListView.builder(
      // ignore: missing_return
      itemBuilder: (context, index) {
        if (mounted) {
          if (index < _nouvelEssaiItems.length ?? 0) {
            return _buildTodoItem(
              _nouvelEssaiItems[index]
                  .split(',')
                  .getRange(0, 1)
                  .toString()
                  .toUpperCase()
                  .replaceAll(new RegExp(r'[^\w\s]+'), ''),
              _nouvelEssaiItems[index]
                  .split(',')
                  .getRange(1, 2)
                  .toString()
                  .replaceAll(new RegExp(r'[^\w\s]+'), ''),
              _nouvelEssaiItems[index]
                  .split(',')
                  .getRange(2, 3)
                  .toString()
                  .replaceAll(RegExp(r'[a-zA-Z\s\(\)]'), ''),
              _nouvelEssaiItems[index]
                  .split(',')
                  .getRange(3, 4)
                  .toString()
                  .replaceAll(RegExp(r'[^0-9h\-, ]+'), ''),
            );
          }
        }
      },
    );
  }

  // Build a single todo item
  Widget _buildTodoItem(var todoText, var line, var date, var time) {
    return new Container(
        height: 130,
        width: double.infinity,
        child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
            child: Card(
                elevation: (5.0),
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 24.0, 15.0, 24.0),
                    child: Column(children: [
                      Row(children: [
                        Expanded(
                            flex: 5,
                            child: Column(children: [
                              Row(children: [
                                Text(todoText,
                                    style: TextStyle(
                                        color: Colors.blue[800],
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold))
                              ]),
                              Row(children: [
                                Text(line,
                                    style: TextStyle(
                                        color: Colors.grey[800], fontSize: 16))
                              ])
                            ])),
                        Expanded(
                            flex: 3,
                            child: Column(children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(date,
                                      style: TextStyle(
                                          color: Colors.grey[700],
                                          fontSize: 16.0))
                                ],
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Center(
                                        child: Text(time,
                                            style: TextStyle(
                                                color: Colors.grey[700],
                                                fontSize: 16.0)),
                                      ),
                                    )
                                  ])
                            ]))
                      ])
                    ])))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[100],
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Mes essais à venir',
                      style: TextStyle(color: Colors.blue[700], fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: _buildTodoList(),
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
                // MaterialPageRoute will automatically animate the screen entry, as well
                // as adding a back button to close it
                new MaterialPageRoute(builder: (context) {
              return new Scaffold(
                appBar: new AppBar(
                  title: new Text('Add un essai'),
                  elevation: 0,
                ),
                body: Container(
                  color: light,
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: ListView(
                      children: [
                        StatefulBuilder(builder:
                            (BuildContext context, StateSetter setState) {
                          return Container(
                              child: Form(
                                  key: _formKey,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        // Name
                                        Text(
                                          "Nom de l'employé",
                                          style: TextStyle(
                                              color: Colors.blue[700],
                                              fontSize: 16),
                                        ),
                                        SizedBox(
                                          height: 8.0,
                                        ),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                  flex: 5,
                                                  child:
                                                      DropdownButtonFormField(
                                                    value: _currentName,
                                                    items: names.map((name) {
                                                      return DropdownMenuItem(
                                                        value: name,
                                                        child: Text(
                                                          '$name',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .grey[700]),
                                                        ),
                                                      );
                                                    }).toList(),
                                                    onChanged: (value) {
                                                      setState(() {
                                                        _currentName = value;
                                                        newName = value;
                                                      });
                                                    },
                                                    decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(),
                                                    ),
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
                                                      onChanged: (value) {
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
                                                          isChecked =
                                                              !isChecked;
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
                                              color: Colors.blue[700],
                                              fontSize: 16),
                                        ),
                                        SizedBox(
                                          height: 8.0,
                                        ),
                                        // Nouvel essai
                                        ListTile(
                                            title: GestureDetector(
                                                child:
                                                    const Text('Nouvel essai'),
                                                onTap: () {
                                                  setState(() {
                                                    _creerAffecterEssai =
                                                        CreerAffecterEssai
                                                            .nouvelEssai;
                                                    showEssai = false;
                                                    showNouvelEssai = true;
                                                  });
                                                }),
                                            leading: Radio<CreerAffecterEssai>(
                                                value: CreerAffecterEssai
                                                    .nouvelEssai,
                                                groupValue: _creerAffecterEssai,
                                                onChanged:
                                                    (CreerAffecterEssai value) {
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
                                                value: CreerAffecterEssai
                                                    .essaiExistant,
                                                groupValue: _creerAffecterEssai,
                                                onChanged:
                                                    (CreerAffecterEssai value) {
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
                                                    child: Text(
                                                      '$essai',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.grey[700]),
                                                    ),
                                                  );
                                                }).toList(),
                                                onChanged: (value) {
                                                  setState(() {
                                                    _currentEssai = value;
                                                  });
                                                },
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                ),
                                                validator: (value) => value ==
                                                            null ||
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
                                                        borderRadius:
                                                            BorderRadius.all(
                                                          Radius.circular(5),
                                                        ),
                                                      ),
                                                      child: Row(children: [
                                                        Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10),
                                                            child: Text(
                                                              DateFormat(
                                                                      'dd/MM/yyyy')
                                                                  .format(
                                                                      currentDate)
                                                                  .toString(),
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  color: Colors
                                                                          .grey[
                                                                      600]),
                                                            ))
                                                      ])),
                                                  onTap: () =>
                                                      _selectDate(context)),
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
                                                decoration:
                                                    const InputDecoration(
                                                  hintText: "Type d'essai",
                                                  border: OutlineInputBorder(),
                                                ),
                                                validator: (value) => value ==
                                                            null ||
                                                        value.isEmpty
                                                    ? "SVP écrivez le type d'essai"
                                                    : null,
                                                onChanged: (value) =>
                                                    setState(() {
                                                  _typeEssai = value;
                                                }),
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
                                              DropdownButtonFormField(
                                                value: _currentTypeCreneau,
                                                items: typesCreneaux
                                                    .map((typeCreneau) {
                                                  return DropdownMenuItem(
                                                    value: typeCreneau,
                                                    child: Text(
                                                      '$typeCreneau',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.grey[700]),
                                                    ),
                                                  );
                                                }).toList(),
                                                onChanged: (value) {
                                                  setState(() {
                                                    _currentTypeCreneau = value;
                                                  });
                                                },
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                ),
                                                validator: (value) => value ==
                                                            null ||
                                                        value.isEmpty
                                                    ? 'SVP choisissez un type existant'
                                                    : null,
                                              ),
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
                                                    child: Text(
                                                      '$line',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.grey[700]),
                                                    ),
                                                  );
                                                }).toList(),
                                                onChanged: (value) {
                                                  setState(() {
                                                    _currentLine = value;
                                                  });
                                                },
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                ),
                                                validator: (value) => value ==
                                                            null ||
                                                        value.isEmpty
                                                    ? 'SVP choisissez une ligne existante'
                                                    : null,
                                              )
                                            ])),
                                      ])));
                        }),
                        Padding(
                          padding: const EdgeInsets.only(top: 32),
                          child: GestureDetector(
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
                                      border:
                                          Border.all(color: Colors.blue[200])),
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
                                // if (_formKey.currentState.validate()) {
                                _addTodoItem(
                                    _typeEssai,
                                    _currentLine,
                                    DateFormat('dd/MM/yyyy')
                                        .format(currentDate)
                                        .toString(),
                                    _currentTypeCreneau);

                                Navigator.pop(
                                    context); // Close the add todo screen
                                /*if (showNouvelEssai == true) {
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
                          }*/
                                // }
                              }),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }));
          },
          tooltip: 'Add essai',
          child: new Icon(Icons.add)),
    );
  }
}
