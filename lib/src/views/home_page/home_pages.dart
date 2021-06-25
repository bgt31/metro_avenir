import 'package:flutter/material.dart';
import 'package:flutter_app/src/views/annuaire/annuaire.dart';
import 'package:flutter_app/src/views/essais/mes_essais.dart';
import 'package:flutter_app/src/views/materiel/materiel.dart';

class HomePage extends StatefulWidget {
  int selectedIndex;
  bool isDarkMode;

  HomePage({Key key, this.selectedIndex = 1, this.isDarkMode = true})
      : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int numero = 0;
  PageController _pageController;

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
    List<Widget> tabPages = [
      Materiel(),
      MesEssais(
        isDarkMode: widget.isDarkMode,
      ),
      Annuaire(),
    ];

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
        title: Text("Bonjour Clément"),
        centerTitle: true,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: IconButton(
              icon: widget.isDarkMode == true
                  ? Icon(Icons.nightlight_round)
                  : Icon(Icons.wb_sunny),
              onPressed: () {
                setState(() {
                  widget.isDarkMode = !widget.isDarkMode;
                });
                print(widget.isDarkMode);
                /*Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MesEssais(
                        isDarkMode: isDarkMode,
                      ),
                    ));*/
              },
            ),
          )
        ],
      ),
      body: Container(
        //color: widget.isDarkMode == true ? Colors.grey[100] : Colors.black54,
        child: PageView(
          children: tabPages, //[widget.selectedIndex],
          onPageChanged: (newPage) {
            setState(() {
              this.widget.selectedIndex = newPage;
              this.widget.isDarkMode = false;
              print(widget.isDarkMode);
            });
          },
          controller: _pageController,
        ),
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
              title: Text("ESSAIS"), icon: Icon(Icons.train)),
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
