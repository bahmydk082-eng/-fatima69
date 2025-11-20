import 'package:flutter/material.dart';
class Secondpage extends StatefulWidget {
  final String name;
  Secondpage({super.key, required this.name});
  @override
  State<Secondpage> createState() => _Secondpage();
}
class _Secondpage extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: Text('Second Page',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
        ),
      ),

      body: Center(
        child:Column(
          children:
          [SizedBox(height: 30,),
            Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.deepPurple.withOpacity(0.1),
                )
              ]),
          child: Text(
            widget.name,style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black),),
        ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed:() {
              Navigator.pop(context);
            },
                child: Text('ارجع',style: TextStyle(fontSize: 15,color: Colors.black),))

    ],
    ),
      ),
    );
  }
}
