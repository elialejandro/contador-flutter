import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{
  
  final int totalClicks = 10;
  final estiloTexto = TextStyle(fontSize: 24);

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Número de clicks', style: estiloTexto),
              Text('$totalClicks', style: estiloTexto),
            ],
          ),
        );
  }
  


}
