import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
          //alignment: Alignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              height: 683,
              width: 460,
              color: Colors.white,
              child: Stack(
                fit: StackFit.loose,
                overflow: Overflow.visible,
                children: <Widget>[
                  // Positioned(
                  //   top: 20,
                  //   right: 10,
                  //   left: 10,
                  //   bottom: 20, child: null,
                  //   // child: Container(
                  //   //   decoration: BoxDecoration(
                  //   //     color: Colors.white,
                  //   //     image: DecorationImage(
                  //   //         image: AssetImage('imageasset/projtopi.jpg'),
                  //   //         fit: BoxFit.contain,
                  //   //         colorFilter: ColorFilter.mode(
                  //   //             Colors.black.withOpacity(0.3),
                  //   //             BlendMode.dstATop)),
                  //   //   ),
                  //   // ),
                  // ),
                  Positioned(
                    top: 60,
                    left: 20,
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      child: const Text(
                        'Project \nTopi',
                        style: TextStyle(
                          fontSize: 80,
                          color: Colors.green,
                          fontFamily: 'Nothing',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 275),
                      child: Text(
                          '----------------------------------or----------------------------------'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 200, left: 80, right: 80),
                    alignment: Alignment.center,
                    child: RaisedButton(
                        color: Colors.green,
                        splashColor: Colors.lightGreen,
                        padding: EdgeInsets.only(left: 100, right: 100),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 900),
                          child: Text(' LOGIN '),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'login');
                        }),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 350, left: 82, right: 81),
                    alignment: Alignment.center,
                    child: RaisedButton(
                      color: Colors.blue[700],
                      splashColor: Colors.lightBlueAccent,
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Expanded(
                            flex: 1,
                            child: Icon(
                              FontAwesomeIcons.facebook,
                              size: 20,
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              'Login with facebook',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        print('hello1');
                      },
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 435, right: 50, left: 100),
                      child: const Text(
                        'New to project-topi?',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 100,
                    right: 80,
                    child: Container(
                        child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'register');
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.green[600]),
                      ),
                    )),
                  )
                ],
              ),
            ),
          ]),
    );
  }
}
