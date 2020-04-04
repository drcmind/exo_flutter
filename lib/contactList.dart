import 'package:exo_flutter/contat.dart';
import 'package:flutter/material.dart';

class ContactList extends StatefulWidget {
  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  List<Contact> contacts = [
    Contact(nom: 'Alain Busume', imageProfil: 'image-1.jpg'),
    Contact(nom: 'Gloire Bisimwa', imageProfil: 'image-2.png'),
    Contact(nom: 'Blaise Lame', imageProfil: 'image-3.jpg'),
    Contact(nom: 'Chritel Olame', imageProfil: 'image-5.jpg'),
    Contact(nom: 'Jonathan Bisimwa', imageProfil: 'image-6.jpg'),
    Contact(nom: 'Louise Aladin', imageProfil: 'image-4.jpg'),
  ];

  //Color _color = Colors.black;

  /*Widget _dialogBuilder(BuildContext context, Contact contact){

    *//*ThemeData localTheme = Theme.of(context);

    return SimpleDialog(
      contentPadding: EdgeInsets.zero,
      children: <Widget>[
        Image.asset(
          'assets/${contact.imageProfil}'
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Text( contact.nom,
                  style: localTheme.textTheme.display1
              ),
              SizedBox(height: 20.0),
              Align(
                alignment: Alignment.center,
                child: Wrap(
                  children: <Widget>[
                    FlatButton(
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, '/detailContact',
                        arguments: {
                          'imageProfil': contact.imageProfil,
                          'nom': contact.nom
                        });
                      },
                      child: Text('DETAIL'),
                    ),
                    RaisedButton(
                      onPressed: (){
                        // ignore: unnecessary_statements
                        Navigator.of(context).pop;
                      },
                      child: Text('ANNULER'),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );*//*
  }*/
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mes Contacts'),
        actions: <Widget>[Icon(Icons.search), Icon(Icons.more_vert)],
      ),
      body: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) {

            /*var nameInitial = contacts[index].nom[0];
            if (contacts[index].imageProfil.length > 0) {
              nameInitial = '';
            }*/

            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 4.0),
              child: Card(
                child: ListTile(

                  /*onTap: () => showDialog(context: context, builder: (context)
                  => _dialogBuilder(context, contacts[index])),*/

                  title: Text(contacts[index].nom, style: Theme.of(context).textTheme.title),
                  leading: CircleAvatar(
                    //backgroundColor: _color,
                    backgroundImage:
                        AssetImage('assets/${contacts[index].imageProfil}'),
                    /*child: Text(
                      nameInitial,
                      style: TextStyle( fontSize: 30.0),
                    ),*/
                  ),
                ),
              ),
            );
          }),
    );
  }
}
