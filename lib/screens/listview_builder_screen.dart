import 'package:flutter/material.dart';
class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({ Key? key }) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesIds = [1,2,3,4,5,6,7,8,9,10];
  final ScrollController scrollController = new ScrollController();

  @override
  void initState(){
    super.initState();
    scrollController.addListener(() {
      print(scrollController.position.pixels.toString() +','+scrollController.position.maxScrollExtent.toString());
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          controller: scrollController,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index){
            return FadeInImage(
              width: double.infinity,
              height: 300,
              fit:BoxFit.cover,
              placeholder: const AssetImage('assets/jar-loading.gif'),
              image: NetworkImage('https://picsum.photos/500/300?image=${imagesIds[index]}')
            );
          }
          ),
      ),
    );
  }
}