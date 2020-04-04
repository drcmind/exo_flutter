import 'package:exo_flutter/contactList.dart';
import 'package:exo_flutter/detailContact.dart';
import 'package:exo_flutter/formulaire.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        buttonColor: Colors.blue,
        buttonTheme: ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
        ),
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => Home(),
        '/contactList' : (context) => ContactList(),
        '/detailContact': (context) => DetailContact(),
      },
    );
  }
}
