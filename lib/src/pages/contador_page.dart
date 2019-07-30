import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  
  @override
  createState() => _ContadorPage();

}

class _ContadorPage extends State<ContadorPage> {
  
  final estiloTexto = TextStyle(fontSize: 24);
  int totalClicks = 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Número de clicks', style: estiloTexto),
              Text('$totalClicks', style: estiloTexto),
            ],
          ),
        ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: Icon( Icons.remove ),
            onPressed: () {
              setState(() {
                totalClicks --;
              });
            },
          ),
          SizedBox( width: 5.0 ),
          FloatingActionButton(
            child: Icon( Icons.add ),
            onPressed: () {
              setState(() {
                totalClicks ++;
              });
            },
          ),
        ],
      ),
    );
  }

}

