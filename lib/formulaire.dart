import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

 /* String email = '';
  String password = '';
  String confirmPss = '';

  final _keyForm = GlobalKey<FormState>();*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('premiers pas'),
        centerTitle: true,
      ),
      body : SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
          child: Form(
//            key: _keyForm,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder()
                  ),
                 /* validator: (val) => val.isEmpty ? 'Entrez votre email' : null,
                  onChanged: (val) => email = val,*/
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Mot de passe',
                      border: OutlineInputBorder()
                  ),
                 /* validator: (val) => val.length < 6 ? 'Entrez un password avec ou + de caracteres' : null,
                  onChanged: (val) => password = val,*/
                  obscureText: true,
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Confirmez le mot de passe',
                      border: OutlineInputBorder()
                  ),
                  /*onChanged: (val) =>  confirmPss = val,
                  validator: (val) => confirmPss != password ? 'Confirmez votre mot de passe' : null,*/
                  obscureText: true,
                ),
                SizedBox(height: 10.0),
                OutlineButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  onPressed: (){
                    /*if(_keyForm.currentState.validate()){
                      Navigator.pushReplacementNamed(context, '/contactList');
                    }*/
                  },
                  borderSide: BorderSide(width: 1.0, color: Colors.green),
                  child: Text(
                    'Valide-moi', style: TextStyle(color: Colors.green),
                  ),
                ),
                SizedBox(height: 5.0),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Colors.blue,
                  child: Text(
                    'Valide-moi',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: (){
                    /*if(_keyForm.currentState.validate()){
                      Navigator.pushReplacementNamed(context, '/contactList');
                    }*/
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}