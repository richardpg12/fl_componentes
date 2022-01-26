import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
   
  const ListView1Screen({Key? key}) : super(key: key);
  
  final options = const ['Megaman','Final Fantasy','Tekken','Street Figther','Super Mario'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView tipo 1')),
      body: ListView(
        children:[
          ...options.map(
            (game)=>ListTile(trailing:const Icon(Icons.arrow_forward_ios_outlined),title: Text(game))
          ).toList(),
          //ListTile(leading: Icon(Icons.map),title: Text('ListView tipo 1')),
          
        ]
      )
    );
  }
}