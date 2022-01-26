import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [

          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              child: const Text('SL'),
              backgroundColor: Colors.indigo[900],
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
           maxRadius: 100,
           backgroundImage: NetworkImage('https://www.latercera.com/resizer/kJ1nY-6Mlz4rg6tBDTbSCZUxml4=/arc-anglerfish-arc2-prod-copesa/public/QHUBCHRS4REGTI6D2OL4G2NGE4.jpg'),
         ),
      ),
    );
  }
}


