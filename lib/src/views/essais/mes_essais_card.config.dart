import 'package:flutter/material.dart';

class MesEssaisCardConfig extends StatelessWidget {
  final String mesEssaisTitle;
  final String mesEssaisLine;
  final String mesEssaisDate;
  final String mesEssaisTime;

  const MesEssaisCardConfig({
    Key key,
    @required this.mesEssaisTitle,
    @required this.mesEssaisLine,
    @required this.mesEssaisDate,
    @required this.mesEssaisTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                                Text(
                                  mesEssaisTitle,
                                  style: TextStyle(
                                      color: Colors.blue[800],
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )
                              ]),
                              Row(children: [
                                Text(
                                  mesEssaisLine,
                                  style: TextStyle(
                                      color: Colors.grey[800], fontSize: 16),
                                )
                              ])
                            ])),
                        Expanded(
                            flex: 2,
                            child: Column(children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(mesEssaisDate.toString(),
                                      style: TextStyle(
                                          color: Colors.grey[700],
                                          fontSize: 16.0))
                                ],
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Text(mesEssaisTime.toString(),
                                          style: TextStyle(
                                              color: Colors.grey[700],
                                              fontSize: 16.0)),
                                    )
                                  ])
                            ]))
                      ])
                    ])))));
  }
}
