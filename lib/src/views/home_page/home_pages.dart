import 'package:avenirmetro/src/views/annuaire/annuaire.dart';
import 'package:avenirmetro/src/views/essais/mes_essais.dart';
import 'package:avenirmetro/src/views/materiel/materiel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;
  int numero = 0;
  var mesEssais = true;
  var materiel = false;
  var annuaire = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Mon Compte'),
              decoration: BoxDecoration(color: Colors.blue[900]),
            ),
            ListTile(
              title: Text("CONFIGURATION"),
            ),
            ListTile(
              title: Text("Gestion des Compte"),
            ),
            ListTile(
              title: Text("F.A.Q"),
            ),
            ListTile(
              title: Text("Déconexion"),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Bonjour Clement"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 1),
          )
        ],
      ),
      body: Stack(
        children: [
          Visibility(visible: mesEssais, child: MesEssais()),
          Visibility(visible: materiel, child: Materiel()),
          Visibility(visible: annuaire, child: Annuaire()),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;

            print(_selectedIndex);

            if (_selectedIndex == 1) {
              mesEssais = true;
              materiel = false;
              annuaire = false;
            } else if (_selectedIndex == 2) {
              mesEssais = false;
              materiel = false;
              annuaire = true;
            } else if (_selectedIndex == 0) {
              mesEssais = false;
              materiel = true;
              annuaire = false;
            }
          });
        },
        currentIndex: _selectedIndex,
        //___backgroundColor: Colors.blueGrey,___ ==couleur NavigationBar==
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              title: Text("MATERIEL"), icon: Icon(Icons.handyman_outlined)),
          BottomNavigationBarItem(
              title: Text("ESSAIS"), icon: Icon(Icons.subway_outlined)),
          BottomNavigationBarItem(
              title: Text("ANNUAIRE"), icon: Icon(Icons.menu_book_sharp))
        ],
      ),
    );
  }
}
