import 'package:flutter/foundation.dart';

class MesEssaisModel {
  String title;
  String line;
  var date;
  var time;

  MesEssaisModel(
  { @required this.title,
    @required this.line,
    @required this.date,
    @required this.time,
  });

  MesEssaisModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        line = json['line'],
        date = json['date'],
        time = json['time'];

  Map<String, dynamic> toJSON() => {
  'title': title,
  'line': line,
  'date': date,
  'time': time,
  };

}
