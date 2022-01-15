import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:project_topi/Views/mainscreen.dart';


class Login extends StatefulWidget {

  @override

  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  @override
  int a=0;

  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        //alignment: Alignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              height: _size.height,
              width: _size.width,
              color: Colors.white,
              child: Stack(
                  fit: StackFit.loose,
                  overflow: Overflow.visible,
                  children: <Widget>[
                    // Container(
                    //   padding: EdgeInsets.all(20),
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     image: DecorationImage(
                    //         image: AssetImage('imageasset/projtopi.jpg'),
                    //         fit: BoxFit.contain,
                    //         colorFilter: ColorFilter.mode(
                    //             Colors.black.withOpacity(0.3),
                    //             BlendMode.dstATop)),
                    //   ),
                    // ),
                    Container(
                      child: SafeArea(
                        child: FlatButton.icon(
                          onPressed: () {
                            setState(() {
                              a=0;
                            });
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            FontAwesomeIcons.arrowLeft,

                          ),
                          label: Text(''),
                        ),
                      ),
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: TextFormField(
                                controller: _emailcontroller ,
                                validator: (value) {
                                  if (value!.isEmpty || !value.contains('@')) {
                                    return 'invalid email';
                                  }
                                  return null;
                                },
                                onSaved: (value) {

                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter email',
                                  labelText: 'Email',
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: TextFormField(
                                controller: _passwordcontroller,
                                validator: (value) {
                                  if (value!.isEmpty || value.length < 8) {
                                    return 'invalid password';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter Password',
                                  labelText: 'Password',
                                ),
                              ),
                            ),
                            // ignore: deprecated_member_use
                            RaisedButton(
                                color: Colors.green,
                                padding: EdgeInsets.only(left: 100, right: 100),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)),
                                textColor: Colors.white,
                                child: AnimatedContainer(
                                  color: Colors.green,
                                  duration: Duration(milliseconds: 900),
                                  child: Text(' LOGIN '),
                                ),
                                onPressed: () async {
                                  login();
                                 print(a);
                                  if(a==1) {
  print('yes');
  Navigator.pushNamed(context, 'mainscreen');
}

                                }),
                          ]),
                    ),
                  ]),
            ),
          ]),
    ); }

Future login() async {
  var Apiurl= "http://10.1.146.234:3000/api/users/find";
  Map data= {
    'firstname': _emailcontroller.text
  };
  print('data ${data}');

  http.Response response=await http.post(Uri.parse(Apiurl),body: data);

  final jsondata=jsonDecode(response.body);
  if(jsondata["data"][0]["firstname"]!=null)
    {
      print('logged in');
      setState(() {
         a=1;
      });
    }



else
  {
  print('can not Logged in');
}
  print ('Response ${response.body}');

}
}
// To parse this JSON data, do
//
//     final find = findFromJson(jsonString);





