import 'package:avenirmetro/src/views/home_page/home_pages.dart';
import 'package:flutter/material.dart';

class MaterielAddNew extends StatefulWidget {
  MaterielAddNew({Key key}) : super(key: key);

  @override
  _MaterielAddNewState createState() => _MaterielAddNewState();
}

class _MaterielAddNewState extends State<MaterielAddNew> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _kitItem;

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[500],
        title: Row(
          children: [
            Text(
              'Nouveau Kit',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 14, bottom: 14),
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    border: Border.all(color: Colors.blue[200])),
                child: Icon(
                  Icons.add_a_photo_rounded,
                  color: Colors.white,
                  size: queryData.size.width / 1.15,
                )),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 30, 24, 20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Nom du Kit',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) => value == null || value.isEmpty
                            ? 'SVP écrivez le nom du kit'
                            : null,
                        onChanged: (value) => setState(() => _kitItem = value),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: ElevatedButton(
                          onPressed: () {
                            print(_kitItem);
                            // Validate will return true if the form is valid, or false if
                            // the form is invalid.
                            if (_formKey.currentState.validate()) {
                              // Process data.
                            }
                          },
                          child: const Text('Submit'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          );
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
