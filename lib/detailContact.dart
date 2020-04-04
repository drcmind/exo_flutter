import 'package:flutter/material.dart';

class DetailContact extends StatefulWidget {
  @override
  _DetailContactState createState() => _DetailContactState();
}

class _DetailContactState extends State<DetailContact> {
  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Icon(
            Icons.more_vert
          )
        ],
        title: Text(data['nom']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Image.asset(
                'assets/${data['imageProfil']}'
            ),
            Text(
              'Nom: ${data['nom']}',
              style: Theme.of(context).textTheme.display1,
            )
          ],
        ),
      )


    );


  }
}
