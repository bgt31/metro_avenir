import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'materiel_add_new.dart';

class Materiel extends StatefulWidget {
  Materiel({Key key}) : super(key: key);

  @override
  _MaterielState createState() => _MaterielState();
}

class _MaterielState extends State<Materiel> {
  int numero = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MaterielAddNew(),
            ),
          );
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
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
                          flex: 2,
                          child: Column(
                            children: [
                              Container(
                                width: 105,
                                height: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    border:
                                        Border.all(color: Colors.blue[700])),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("images/outils.jpg"),
                                ),
                              )
                            ],
                          ),
                        ),
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
                                      "CLE MIXTE OGV",
                                      style: TextStyle(color: Colors.blue[900]),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Row(children: [
                                    Container(
                                      width: 14,
                                      child: FaIcon(
                                        FontAwesomeIcons.tag,
                                        color: Colors.blue[900],
                                        size: 16,
                                        semanticLabel: "Icone Id",
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "VFJA",
                                      style: TextStyle(color: Colors.blue[700]),
                                    )
                                  ]),
                                ),
                                Row(children: [
                                  Container(
                                    width: 14,
                                    child: FaIcon(
                                      FontAwesomeIcons.mapMarkerAlt,
                                      color: Colors.blue[900],
                                      size: 16,
                                      semanticLabel: "IconMap",
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Capgemini",
                                    style: TextStyle(color: Colors.blue[700]),
                                  )
                                ]),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Spacer(),
                              Text("x1",
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 18.0))
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
                          flex: 2,
                          child: Column(
                            children: [
                              Container(
                                width: 105,
                                height: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    border:
                                        Border.all(color: Colors.blue[700])),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("images/cle.jpeg"),
                                ),
                              )
                            ],
                          ),
                        ),
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
                                      "CLE",
                                      style: TextStyle(color: Colors.blue[900]),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Row(children: [
                                    Container(
                                      width: 14,
                                      child: FaIcon(
                                        FontAwesomeIcons.tag,
                                        color: Colors.blue[900],
                                        size: 16,
                                        semanticLabel: "Icone Id",
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "VFJA",
                                      style: TextStyle(color: Colors.blue[700]),
                                    )
                                  ]),
                                ),
                                Row(children: [
                                  Container(
                                    width: 14,
                                    child: FaIcon(
                                      FontAwesomeIcons.mapMarkerAlt,
                                      color: Colors.blue[900],
                                      size: 16,
                                      semanticLabel: "IconMap",
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Capgemini",
                                    style: TextStyle(color: Colors.blue[700]),
                                  )
                                ]),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Spacer(),
                              Text("x2",
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 18.0))
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
                          flex: 2,
                          child: Column(
                            children: [
                              Container(
                                width: 105,
                                height: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    border:
                                        Border.all(color: Colors.blue[700])),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("images/unMarteau.jpeg"),
                                ),
                              )
                            ],
                          ),
                        ),
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
                                      "MARTEAU",
                                      style: TextStyle(color: Colors.blue[900]),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Row(children: [
                                    Container(
                                      width: 14,
                                      child: FaIcon(
                                        FontAwesomeIcons.tag,
                                        color: Colors.blue[900],
                                        size: 16,
                                        semanticLabel: "Icone Id",
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "VFJA",
                                      style: TextStyle(color: Colors.blue[700]),
                                    )
                                  ]),
                                ),
                                Row(children: [
                                  Container(
                                    width: 14,
                                    child: FaIcon(
                                      FontAwesomeIcons.mapMarkerAlt,
                                      color: Colors.blue[900],
                                      size: 16,
                                      semanticLabel: "IconMap",
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Capgemini",
                                    style: TextStyle(color: Colors.blue[700]),
                                  )
                                ]),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Spacer(),
                              Text("x5",
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 18.0))
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
                          flex: 2,
                          child: Column(
                            children: [
                              Container(
                                width: 105,
                                height: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    border:
                                        Border.all(color: Colors.blue[700])),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("images/pince.jpeg"),
                                ),
                              )
                            ],
                          ),
                        ),
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
                                      "KIT PINCE",
                                      style: TextStyle(color: Colors.blue[900]),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Row(children: [
                                    Container(
                                      width: 14,
                                      child: FaIcon(
                                        FontAwesomeIcons.tag,
                                        color: Colors.blue[900],
                                        size: 16,
                                        semanticLabel: "Icone Id",
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "VFJA",
                                      style: TextStyle(color: Colors.blue[700]),
                                    )
                                  ]),
                                ),
                                Row(children: [
                                  Container(
                                    width: 14,
                                    child: FaIcon(
                                      FontAwesomeIcons.mapMarkerAlt,
                                      color: Colors.blue[900],
                                      size: 16,
                                      semanticLabel: "IconMap",
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Capgemini",
                                    style: TextStyle(color: Colors.blue[700]),
                                  )
                                ]),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Spacer(),
                              Text("x1",
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 18.0))
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
                          flex: 2,
                          child: Column(
                            children: [
                              Container(
                                width: 105,
                                height: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    border:
                                        Border.all(color: Colors.blue[700])),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("images/marteau.jpeg"),
                                ),
                              )
                            ],
                          ),
                        ),
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
                                      "KIT MARTEAU",
                                      style: TextStyle(color: Colors.blue[900]),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Row(children: [
                                    Container(
                                      width: 14,
                                      child: FaIcon(
                                        FontAwesomeIcons.tag,
                                        color: Colors.blue[900],
                                        size: 16,
                                        semanticLabel: "Icone Id",
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "VFJA",
                                      style: TextStyle(color: Colors.blue[700]),
                                    )
                                  ]),
                                ),
                                Row(children: [
                                  Container(
                                    width: 14,
                                    child: FaIcon(
                                      FontAwesomeIcons.mapMarkerAlt,
                                      color: Colors.blue[900],
                                      size: 16,
                                      semanticLabel: "IconMap",
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Capgemini",
                                    style: TextStyle(color: Colors.blue[700]),
                                  )
                                ]),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Spacer(),
                              Text("x1",
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 18.0))
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
    );
  }
}
