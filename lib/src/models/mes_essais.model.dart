import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_app/src/views/home_pages.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MesEssaisModel extends StatefulWidget {
  MesEssaisModel({Key key}) : super(key: key);

  @override
  _MesEssaisModelState createState() => _MesEssaisModelState();
}

class _MesEssaisModelState extends State<MesEssaisModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'MER 12 22222',
                                style: TextStyle(color: Colors.blue[900]),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Ligne A (1 station)',
                                style: TextStyle(color: Colors.grey[800]),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                //Spacer(),
                                Text("30/09/2022",
                                    style: TextStyle(
                                        color: Colors.grey[700],
                                        fontSize: 18.0))
                              ],
                            ),
                            Row(
                              children: [
                                //Spacer(),
                                Center(
                                  child: Text("23h00",
                                      style: TextStyle(
                                          color: Colors.grey[700],
                                          fontSize: 18.0)),
                                )
                              ],
                            ),
                          ],
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
