import 'package:avenirmetro/src/views/annuaire/annuaire.dart';
import 'package:avenirmetro/src/views/essais/mes_essais.dart';
import 'package:avenirmetro/src/views/materiel/materiel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  int selectedIndex;

  HomePage({Key key, this.selectedIndex = 1}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int numero = 0;
  PageController _pageController;

  final List<Widget> tabPages = [
    Materiel(),
    MesEssais(),
    Annuaire(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: widget.selectedIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

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
      body: PageView(
        children: tabPages, //[widget.selectedIndex],
        onPageChanged: (newPage) {
          setState(() {
            this.widget.selectedIndex = newPage;
          });
        },
        controller: _pageController,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          this._pageController.animateToPage(index,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut);
        },
        currentIndex: widget.selectedIndex,
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

  void onPageChanged(int page) {
    setState(() {
      this.widget.selectedIndex = page;
      print(page);
    });
  }

  void onTabTapped(int index) {
    this._pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}
