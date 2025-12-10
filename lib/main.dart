import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
     home:Scaffold(
       appBar: AppBar(

         title:const Center(child:Text('CV',style: TextStyle(color: Colors.pink,fontSize: 20),) ,) ,
         backgroundColor:Color(0xFFF8BBD0),
       ),
       body:Column(
         children: [
           Container(
             width: double.infinity,
             color: Colors.purple.shade50,
             child: Column(
               children: [
                 SizedBox(height: 10,),
                 CircleAvatar(
                   radius: 50,
                   backgroundImage: Image.asset("image/img.png").image,
                 ),
                 Divider(),
                Text('Shahad Anwar',style: TextStyle(color: Color(0xFFD81B60),fontSize: 20),),
                 Divider(),
                 Text('Devloper',style: TextStyle(color: Color(0xFFD81B60),fontSize: 20),),
                 Divider(),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text('Email:',style: TextStyle(color: Color(0xFFD81B60),fontSize: 20),),
                     Text('shahadanwar20@gmail.com',style: TextStyle(color: Color(0xFFD81B60),fontSize: 20),),
                   ],
                 ),
                 Divider(),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text('Phone:',style: TextStyle(color: Colors.pink,fontSize: 20),),
                     Text('775783903',style: TextStyle(color: Colors.pink,fontSize: 20),),
                   ],
                 ),
                 Divider(),
                 Text('Skils',style: TextStyle(color: Color(0xFFAD1457),fontSize: 20),),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 16.0),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text('1- مهارات علمية',style: TextStyle(color: Color(0xFF780A51),fontSize: 20),),
                         SizedBox(height: 5,),
                         Text(' :برمجة التطبيقات باستخدام',style: TextStyle(color: Color(0xFFF06292),fontSize: 15),),
                         SizedBox(height: 3,),
                         Text('Flutter,Java',style: TextStyle(color: Color(0xFFF48FB1)),),
                         SizedBox(height: 5,),
                         Text(' :تصميم قواعد البيانات باستخدام',style: TextStyle(color: Color(0xFFF06292),fontSize: 15),),
                         SizedBox(height: 3,),
                         Text(' MYSQL',style: TextStyle(color: Color(0xFFF48FB1)),),
                         SizedBox(height: 5,),
                         Text(' :تصميم المواقع الالكترونية باستخدام',style: TextStyle(color: Color(0xFFF06292),fontSize: 15),),
                         SizedBox(height: 3,),
                         Text('HTML,CSS,JS',style: TextStyle(color: Color(0xFFF48FB1),),),


                       ],
                     )
                     )
                   ],
                 ),
                 Divider(),
                 Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 16.0),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text('2- مهارات عملية',style: TextStyle(color: Color(0xFF780A51),fontSize: 20),),
                         SizedBox(height: 5,),
                         Text('ادارة الوقت',style: TextStyle(color: Color(0xFFF06292)),),
                        SizedBox(height: 5,),
                         Text('حل المشكلات بالتفكير المنطقي',style: TextStyle(color: Color(0xFFF06292)),),
                         SizedBox(height: 5,),
                         Text('العمل الجامعي والتواصل الفعال',style: TextStyle(color: Color(0xFFF06292)),),




                       ],
                     ),
                     ),
                   ],

                 )
               ],
             ),

           ),
         ],
       )
     ),
    );
  }
}

