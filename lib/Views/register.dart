import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Register extends StatefulWidget {

  @override

  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _lastnamecontroller = TextEditingController();
  TextEditingController _phonenumbercontroller = TextEditingController();
  TextEditingController _gender = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
        //resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            title: Text(
              'Register',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            backgroundColor: Colors.green,
            centerTitle: true,
          ),
        ),
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
                      clipBehavior: Clip.none,
                      fit: StackFit.loose,
                      children: <Widget>[

                        SafeArea(
                            child: SingleChildScrollView(
                                child: Form(
                                    key: _formKey,
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children:  [
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            child: TextFormField(
                                              controller: _namecontroller,
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return 'invalid';
                                                } else
                                                  return null;
                                              },
                                              onSaved: (value) {},
                                              decoration: InputDecoration(
                                                border: UnderlineInputBorder(),
                                                hintText: 'Enter',
                                                labelText: 'First Name',
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            child: TextFormField(
                                              controller: _lastnamecontroller,
                                              validator: (value) {
                                                if (value != null) {
                                                  return 'invalid';
                                                } else
                                                  return null;
                                              },
                                              onSaved: (value) {},
                                              decoration: const InputDecoration(
                                                border: UnderlineInputBorder(),
                                                hintText: 'Enter',
                                                labelText: 'Last Name',
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            child: TextFormField(
                                              controller: _gender,
                                              validator: (value) {
                                                if (value != null) {
                                                  return 'invalid';
                                                } else
                                                  return null;
                                              },
                                              onSaved: (value) {},
                                              decoration: InputDecoration(
                                                border: UnderlineInputBorder(),
                                                hintText: 'Enter',
                                                labelText: 'gender',
                                              ),
                                            ),
                                          ),

                                          Container(
                                            padding: EdgeInsets.all(10),
                                            child: TextFormField(
                                              controller: _phonenumbercontroller,
                                              validator: (value) {
                                                if (value != null) {
                                                  return 'invalid';
                                                } else
                                                  return null;
                                              },
                                              onSaved: (value) {},
                                              decoration: InputDecoration(
                                                border: UnderlineInputBorder(),
                                                hintText: 'Enter',
                                                labelText: 'phoneNo',
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            child: TextFormField(
                                              controller: _emailcontroller,
                                              validator: (value) {
                                                if (value!.isEmpty ||
                                                    !value.contains('@')) {
                                                  return 'invalid';
                                                } else
                                                  return null;
                                              },
                                              onSaved: (value) {},
                                              decoration: InputDecoration(
                                                border: UnderlineInputBorder(),
                                                hintText: 'Enter',
                                                labelText: 'Email',
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            child: TextFormField(
                                              obscureText: true,
                                              controller: _passwordcontroller,
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return 'invalid';
                                                } else
                                                  return null;
                                              },
                                              onSaved: (value) {},
                                              decoration: InputDecoration(
                                                border: UnderlineInputBorder(),
                                                hintText: 'Enter',
                                                labelText: 'Password',
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            child: TextFormField(
                                              obscureText: true,
                                              validator: (value) {
                                                if (value!.isEmpty ||
                                                    value != _passwordcontroller.text) {
                                                  return 'invalid';
                                                } else
                                                  return null;
                                              },
                                              onSaved: (value) {},
                                              decoration: InputDecoration(
                                                border: UnderlineInputBorder(),
                                                hintText: 'Re-enter',
                                                labelText: 'Re-enter',
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // ignore: deprecated_member_use
                                            child: RaisedButton(
                                              onPressed: (){
print (_namecontroller.text);
RegisterUser();

                                              },
                                              child: Text('Register'),
                                            ),
                                          )
                                        ]))))
                      ]))
            ]));
  }
  Future RegisterUser ()
  async {
    var Apiurl= "http://10.1.146.234:3000/api/users/register";
    Map data={
      'firstname' : _namecontroller.text,
      'lastname' : _lastnamecontroller.text,
      'gender' : _gender.text,
      'phoneno' : _phonenumbercontroller.text,
      'email' : _emailcontroller.text,
      'password' : _passwordcontroller.text
    };
     print ('Json data: ${data}');
http.Response response=await http.post(Uri.parse(Apiurl),body:data);
var response_data =jsonDecode(response.body);
print('response ${response_data}');
  }


}

