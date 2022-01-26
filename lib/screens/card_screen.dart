import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card'),
      ),
      body:ListView(
        padding: const EdgeInsets.symmetric(vertical:10, horizontal: 20),
        children: const [
          CustomCardType1( ),
          SizedBox(height: 10),
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(name:'Un hermoso paisaje',imageUrl:'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Che_ne_saj.jpg/1280px-Che_ne_saj.jpg'),
          SizedBox(height: 10),
          CustomCardType2(name:'Un paisaje nordico',imageUrl:'https://estaticos.muyinteresante.es/media/cache/1140x_thumb/uploads/images/gallery/5fd097785bafe83cb91cf5cb/12.jpg'),
          SizedBox(height: 10),
          CustomCardType2(imageUrl:'https://viajes.nationalgeographic.com.es/medio/2019/03/19/lofoten-hamnoy_d5432664_1280x720.jpg'),
          SizedBox(height: 10),

        ]        
      ),
    );
  }
}
