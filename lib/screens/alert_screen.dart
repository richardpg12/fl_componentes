import 'dart:io';

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  void displayDialogAndroid(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context){
        //return Text('hola mundo');
        return AlertDialog(
          elevation:5,
          title: const Text('Titulo'),
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 10),
              FlutterLogo(size: 100),
            ],
          ),
          actions: [
            TextButton(
              child: const Text('Cancelar'),
              onPressed: (){
                //Navigator.of(context).pop();
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: const Text('Aceptar'),
              onPressed: (){
                //Navigator.of(context).pop();
                Navigator.pop(context);
              },
            ),
          ],

        );
      }
    );
  }

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (context){
        return CupertinoAlertDialog(
          title: const Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 10),
              FlutterLogo(size: 100),
            ],
          ),
          actions: [
            CupertinoDialogAction(
              child: const Text('Cancelar',style:TextStyle(color:Colors.red)),
              onPressed: (){
                //Navigator.of(context).pop();
                Navigator.pop(context);
              },
            ),
            CupertinoDialogAction(
              child: const Text('Aceptar'),
              onPressed: (){
                //Navigator.of(context).pop();
                Navigator.pop(context);
              },
            ),
          ],

        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child:ElevatedButton(
           style: ElevatedButton.styleFrom(
              // primary:Colors.red,
            //  shape: const StadiumBorder(),
            //  elevation: 0
           ),
           child: const Padding(
             padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
             child: Text('Show Alert', style: TextStyle(fontSize:15),),
           ),
           onPressed: (){
            //displayDialogAndroid(context);
            //displayDialogIOS(context);
            if(Platform.isAndroid){
              displayDialogAndroid(context);
            }else{
              displayDialogIOS(context);
            }
           },
         ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { 
          Navigator.pop(context);
         },
        child: const Icon(Icons.close),
      ),
    );
  }
}