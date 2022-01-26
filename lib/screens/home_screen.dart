import 'package:fl_components/routes/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return  Scaffold(  
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context,index)=> ListTile(
          leading: Icon(menuOptions[index].icon, color: AppTheme.primary),
          title: Text(menuOptions[index].name),
          onTap: (){
            // final route = MaterialPageRoute(builder: (context)=>const ListView1Screen());
            // Navigator.push(context, route);
            Navigator.pushNamed(context, menuOptions[index].route);
          },
        ),
        separatorBuilder: (_, __) => Divider(),
        itemCount: AppRoutes.menuOptions.length,
      )
    );
  }
}