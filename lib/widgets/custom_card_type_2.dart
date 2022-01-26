import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';
class CustomCardType2 extends StatelessWidget {
  final String? name;
  final String imageUrl;

  const CustomCardType2({ Key? key, required this.imageUrl, this.name }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      clipBehavior: Clip.antiAlias,
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children:  [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: AssetImage('assets/jar-loading.gif'),
            width:double.infinity,
            height: 220,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          if(name!=null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding:const EdgeInsets.only(right:20,top:10,bottom:10),
              child: Text(name!)
            )
          
        ]
      ),
    );
  }
}