import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  final _formKey = GlobalKey<FormState>();
  String _name;
  String _email;
  String _password;
  int _number;

  Widget _buildFeildName(){
    return TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Username',
                    ),
                    validator: (text) {
                      return Validator.nameValidate(text);
                    },
                    onSaved: (text) {
                      _name = text;
                    },
                  );
  }

    Widget _buildFeildEmail(){
    return TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                    ),
                    validator: (text) {
                      if(text.isEmpty){
                        return 'Email cannot be empty';
                      }
                      return null;
                    },
                    onSaved: (text) {
                      _email = text;
                    },
                  );
  }

    Widget _buildFeildPassword(){
    return TextFormField(
      obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                    ),
                    validator: (text) {
                      if(text.isEmpty){
                        return 'Password cannot be empty';
                      }
                      return null;
                    },
                    onSaved: (text) {
                      _password = text;
                    },
                  );
  }

    Widget _buildFeildNumber(){
    return TextFormField(
      maxLength: 10,
      keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Phone number',
                    ),
                    validator: (text) {
                      if(text.isEmpty){
                        return 'Phone number cannot be empty';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _number= int.parse(value);
                    },
                  );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Page'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
        margin: EdgeInsets.all(24.0),
        child: Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: _buildFeildName(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: _buildFeildEmail(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: _buildFeildPassword(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                   child: _buildFeildNumber(),
                  ),
                  SizedBox(
                    height: 100.0,
                  ),
                  Container(
                    child: RaisedButton(
                      child: Text('Save'),
                      onPressed: () {
                        if(_formKey.currentState.validate()){
                          print("form valid");
                          _formKey.currentState.save();
                        }else{
                          print("not form valid");
                          print(_email);
                          return;
                        }
                      },
                    ),
                  ),
                ],
              ),
      ),
        ),
      ),
    );
  }
}

class Validator{
  static String nameValidate(String value) {
    if(value.isEmpty) {
      return "Name can't be empty";
    }
    if(value.length <2) {
      return "Name must be at least 2 charaters long";
    }
    return null;
  }
}