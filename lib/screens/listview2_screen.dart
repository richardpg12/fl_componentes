import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
   
  const ListView2Screen({Key? key}) : super(key: key);
  
  final options = const ['Megaman','Final Fantasy','Tekken','Street Figther','Super Mario'];
  @override
  Widget build(BuildContext context) {
    const iconsList = [Icon(Icons.map),Icon(Icons.ac_unit),Icon(Icons.airline_seat_flat),Icon(Icons.airport_shuttle),Icon(Icons.all_inclusive)];
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView tipo 2')
      ),
      body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context,index)=>ListTile(
            leading:iconsList[index], 
            title: Text(options[index]),
            trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo,),
            onTap: (){
              final game = options[index];
              print(game);
            },
            ),
          separatorBuilder: (_,__)=>const Divider()
          )
    );
  }
}