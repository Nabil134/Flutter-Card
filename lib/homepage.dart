import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite Card'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          CustomCard(),
        ],),
      ),
    );
  }
}

//
class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(children: [
        SizedBox(
          width: 150,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(8),
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(20),
            ),
            child: Image.network('https://cdn.pixabay.com/photo/2016/11/23/18/12/bag-1854148_640.jpg',
              height: 150,
             fit: BoxFit.cover,
            ),
          ),
        ),
       Expanded(
       child: Container(
         height: 150,
         decoration: BoxDecoration(
          color: Colors.white,
           borderRadius: BorderRadius.circular(20),
           border: Border.all(
             color: Colors.red,
           ),
         ),
       child:  Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Padding(
             padding: const EdgeInsets.all(2.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
               Text('Smart Watch\nElectronic ',style: TextStyle(
                 color: Colors.black,
                 fontWeight: FontWeight.w600,
                 fontSize: 20,
               ),),
               IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.red,),),
             ],),
           ),
       const SizedBox(height: 10,),
           Text('Price: \$99 ',style: TextStyle(
             color: Colors.black,
             fontWeight: FontWeight.w600,
             fontSize: 20,
           ),),
         ],
       ),
       ),
       ),

      ],),
    );
  }
}

//