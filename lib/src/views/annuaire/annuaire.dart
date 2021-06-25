import 'package:flutter/material.dart';
import 'package:flutter_app/src/views/annuaire/annuaire_add.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Annuaire extends StatefulWidget {
  Annuaire({Key key}) : super(key: key);

  @override
  AnnuaireState createState() => AnnuaireState();
}

class AnnuaireState extends State<Annuaire> {
  var light = Colors.grey[100];
  var dark = Colors.black87;
  bool backgroundColor = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AnnuaireAdd(),
              ),
            );
          },
          child: const Icon(Icons.add),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          color: light,
          child: ListView(
            children: [
              Container(
                  child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
                child: Card(
                  elevation: (5.0),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 24.0, 15.0, 24.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Ayman SOUA",
                                          style: TextStyle(
                                              color: Colors.blue[900]),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, bottom: 5),
                                      child: Row(children: [
                                        Text(
                                          "Ingénieur Essais",
                                          style: TextStyle(
                                              color: Colors.grey[600]),
                                        )
                                      ]),
                                    ),
                                    Row(children: [
                                      Text(
                                        "Capgemini",
                                        style:
                                            TextStyle(color: Colors.grey[600]),
                                      )
                                    ]),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Row(
                                children: [
                                  Spacer(),
                                  Container(
                                    width: 14,
                                    child: FaIcon(
                                      FontAwesomeIcons.solidEnvelope,
                                      color: Colors.blue[900],
                                      size: 19,
                                      semanticLabel: "IconMap",
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 14,
                                    child: FaIcon(
                                      FontAwesomeIcons.phone,
                                      color: Colors.blue[900],
                                      size: 16,
                                      semanticLabel: "IconMap",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )),
              Container(
                  child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
                child: Card(
                  elevation: (5.0),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 24.0, 15.0, 24.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Christophe ANGLADA",
                                          style: TextStyle(
                                              color: Colors.blue[900]),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, bottom: 5),
                                      child: Row(children: [
                                        Text(
                                          "Ingénieur Essais",
                                          style: TextStyle(
                                              color: Colors.grey[600]),
                                        )
                                      ]),
                                    ),
                                    Row(children: [
                                      Text(
                                        "Capgemini",
                                        style:
                                            TextStyle(color: Colors.grey[600]),
                                      )
                                    ]),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Row(
                                children: [
                                  Spacer(),
                                  Container(
                                    width: 14,
                                    child: FaIcon(
                                      FontAwesomeIcons.solidEnvelope,
                                      color: Colors.blue[900],
                                      size: 19,
                                      semanticLabel: "IconMap",
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 14,
                                    child: FaIcon(
                                      FontAwesomeIcons.phone,
                                      color: Colors.blue[900],
                                      size: 16,
                                      semanticLabel: "IconMap",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )),
              Container(
                  child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
                child: Card(
                  elevation: (5.0),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 24.0, 15.0, 24.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Christophe COLOSIO",
                                          style: TextStyle(
                                              color: Colors.blue[900]),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, bottom: 5),
                                      child: Row(children: [
                                        Text(
                                          "Ingénieur Essais",
                                          style: TextStyle(
                                              color: Colors.grey[600]),
                                        )
                                      ]),
                                    ),
                                    Row(children: [
                                      Text(
                                        "Capgemini",
                                        style:
                                            TextStyle(color: Colors.grey[600]),
                                      )
                                    ]),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Row(
                                children: [
                                  Spacer(),
                                  Container(
                                    width: 14,
                                    child: FaIcon(
                                      FontAwesomeIcons.solidEnvelope,
                                      color: Colors.blue[900],
                                      size: 19,
                                      semanticLabel: "IconMap",
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 14,
                                    child: FaIcon(
                                      FontAwesomeIcons.phone,
                                      color: Colors.blue[900],
                                      size: 16,
                                      semanticLabel: "IconMap",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )),
              Container(
                  child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
                child: Card(
                  elevation: (5.0),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 24.0, 15.0, 24.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Clément BERGEOT",
                                          style: TextStyle(
                                              color: Colors.blue[900]),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, bottom: 5),
                                      child: Row(children: [
                                        Text(
                                          "Admin",
                                          style: TextStyle(
                                              color: Colors.grey[600]),
                                        )
                                      ]),
                                    ),
                                    Row(children: [
                                      Text(
                                        "Capgemini",
                                        style:
                                            TextStyle(color: Colors.grey[600]),
                                      )
                                    ]),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Row(
                                children: [
                                  Spacer(),
                                  Container(
                                    width: 14,
                                    child: FaIcon(
                                      FontAwesomeIcons.solidEnvelope,
                                      color: Colors.blue[900],
                                      size: 19,
                                      semanticLabel: "IconMap",
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 14,
                                    child: FaIcon(
                                      FontAwesomeIcons.phone,
                                      color: Colors.blue[900],
                                      size: 16,
                                      semanticLabel: "IconMap",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )),
              Container(
                  child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
                child: Card(
                  elevation: (5.0),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 24.0, 15.0, 24.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Dorian REVIL-BAUDARD",
                                          style: TextStyle(
                                              color: Colors.blue[900]),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, bottom: 5),
                                      child: Row(children: [
                                        Text(
                                          "Développer d'applications mobiles",
                                          style: TextStyle(
                                              color: Colors.grey[600]),
                                        )
                                      ]),
                                    ),
                                    Row(children: [
                                      Text(
                                        "Capgemini",
                                        style:
                                            TextStyle(color: Colors.grey[600]),
                                      )
                                    ]),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Row(
                                children: [
                                  Spacer(),
                                  Container(
                                    width: 14,
                                    child: FaIcon(
                                      FontAwesomeIcons.solidEnvelope,
                                      color: Colors.blue[900],
                                      size: 19,
                                      semanticLabel: "IconMap",
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 14,
                                    child: FaIcon(
                                      FontAwesomeIcons.phone,
                                      color: Colors.blue[900],
                                      size: 16,
                                      semanticLabel: "IconMap",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )),
              Container(
                  child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
                child: Card(
                  elevation: (5.0),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 24.0, 15.0, 24.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Julien TURO",
                                          style: TextStyle(
                                              color: Colors.blue[900]),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, bottom: 5),
                                      child: Row(children: [
                                        Text(
                                          "Développeur",
                                          style: TextStyle(
                                              color: Colors.grey[600]),
                                        )
                                      ]),
                                    ),
                                    Row(children: [
                                      Text(
                                        "Capgemini",
                                        style:
                                            TextStyle(color: Colors.grey[600]),
                                      )
                                    ]),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Row(
                                children: [
                                  Spacer(),
                                  Container(
                                    width: 14,
                                    child: FaIcon(
                                      FontAwesomeIcons.solidEnvelope,
                                      color: Colors.blue[900],
                                      size: 19,
                                      semanticLabel: "IconMap",
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 14,
                                    child: FaIcon(
                                      FontAwesomeIcons.phone,
                                      color: Colors.blue[900],
                                      size: 16,
                                      semanticLabel: "IconMap",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )),
            ],
          ),
        ));
  }
}
