import 'package:flutter/material.dart';
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.home,size: 35,color: Colors.grey,),
        SizedBox(height: 20,),
        Text('الصفحة الرئيسية',style: TextStyle(fontSize: 25,color: Colors.grey),)
      ],
    ),
      
    );
  }
}
