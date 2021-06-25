import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/src/views/login/login.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [GlobalMaterialLocalizations.delegate],
      supportedLocales: [const Locale('fr')],
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.grey[100]),
          primaryColor: Colors.grey),
      home: Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}
