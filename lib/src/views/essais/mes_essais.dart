import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../models/mes_essais.model.dart';
import 'mes_essais_add_new.dart';

class MesEssais extends StatefulWidget {
  MesEssais({Key key}) : super(key: key);

  @override
  _MesEssaisState createState() => _MesEssaisState();
}

class _MesEssaisState extends State<MesEssais> {
  final List mesEssais = [
    MesEssaisModel(
        title: 'MER 12',
        line: 'Ligne A',
        date: DateFormat('dd/mm/yy').format(DateTime.now()),
        time: DateFormat('kk:mm').format(DateTime.now())),
    MesEssaisModel(
        title: 'Maintenance cable',
        line: 'Ligne B',
        date: DateFormat('dd/mm/yy').format(DateTime.now()),
        time: DateFormat('kk:mm').format(DateTime.now())),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
                  child: new ListView.builder(
                      itemCount: mesEssais.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                            height: 130,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 15),
                              child: Card(
                                elevation: (5.0),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      15.0, 24.0, 15.0, 24.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            flex: 5,
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      mesEssais[index].title,
                                                      style: TextStyle(
                                                          color:
                                                              Colors.blue[800],
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      mesEssais[index].line,
                                                      style: TextStyle(
                                                          color:
                                                              Colors.grey[800],
                                                          fontSize: 16),
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
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                        mesEssais[index]
                                                            .date
                                                            .toString(),
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[700],
                                                            fontSize: 16.0))
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Center(
                                                      child: Text(
                                                          mesEssais[index]
                                                              .time
                                                              .toString(),
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .grey[700],
                                                              fontSize: 16.0)),
                                                    )
                                                  ],
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
                            ));
                      }))),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MesEssaisAddNew(),
            ),
          );
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
