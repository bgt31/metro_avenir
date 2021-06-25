import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/views/home_page/home_pages.dart';

import 'delayed_animation.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  final int delayedAmount = 500;
  double _scale;
  AnimationController _controller;
  bool loginContainer = true;
  bool loginToApp = false;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final color = Colors.white;
    _scale = 1 - _controller.value;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.blue[700],
          body: Center(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      AvatarGlow(
                        endRadius: 90,
                        duration: Duration(seconds: 2),
                        glowColor: Colors.white24,
                        repeat: true,
                        repeatPauseDuration: Duration(seconds: 2),
                        startDelay: Duration(seconds: 1),
                        child: Material(
                            elevation: 8.0,
                            shape: CircleBorder(),
                            child: CircleAvatar(
                              backgroundColor: Colors.grey[100],
                              child: Icon(
                                Icons.train,
                                size: 65.0,
                              ),
                              radius: 50.0,
                            )),
                      ),
                      DelayedAnimation(
                        child: Text(
                          "Avenir Metro",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0,
                              color: color),
                        ),
                        delay: delayedAmount + 1000,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      DelayedAnimation(
                        child: Text(
                          "Modernisation du système métro",
                          style: TextStyle(fontSize: 20.0, color: color),
                        ),
                        delay: delayedAmount + 3000,
                      ),
                      SizedBox(
                        height: 100.0,
                      ),
                      DelayedAnimation(
                        child: GestureDetector(
                          onTapDown: _onTapDown,
                          onTapUp: _onTapUp,
                          onTap: () {
                            setState(() {
                              loginToApp = true;
                              loginContainer = false;
                              /* Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ),
                              );*/
                            });
                          },
                          child: Transform.scale(
                            scale: _scale,
                            child: Stack(
                              children: [
                                Visibility(
                                    visible: loginContainer,
                                    child: _animatedButtonUI),
                                Visibility(
                                  visible: loginToApp,
                                  child: _appLogin,
                                ),
                              ],
                            ),
                          ),
                        ),
                        delay: delayedAmount + 4000,
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      DelayedAnimation(
                        child: Text(
                          "Enregistrer".toUpperCase(),
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: color),
                        ),
                        delay: delayedAmount + 5000,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
          //  Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Text('Tap on the Below Button',style: TextStyle(color: Colors.grey[400],fontSize: 20.0),),
          //     SizedBox(
          //       height: 20.0,
          //     ),
          //      Center(

          //   ),
          //   ],

          // ),
          ),
    );
  }

  Widget get _animatedButtonUI => Container(
        height: 60,
        width: 270,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          color: Colors.white,
        ),
        child: Center(
          child: Text(
            'LOGIN',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue[700],
            ),
          ),
        ),
      );

  Widget get _appLogin => Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Container(
          //height: 220,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              Center(
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[700],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "E-mail",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) => value == null || value.isEmpty
                      ? "SVP écrivez votre e-mail"
                      : null,
                  onChanged: (value) => setState(() {
                    //_email = value;
                  }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Mot de passe",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) => value == null || value.isEmpty
                      ? "SVP écrivez votre mot de passe"
                      : null,
                  onChanged: (value) => setState(() {
                    //_motpasse = value;
                  }),
                ),
              ),
              GestureDetector(
                child: Container(
                  height: 60,
                  width: 270,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 32,
              )
            ],
          ),
        ),
      );

  void _onTapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse();
  }
}
