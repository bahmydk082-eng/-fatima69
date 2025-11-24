import 'package:flutter/material.dart';
class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {
  TextEditingController _conter= TextEditingController();
  TextEditingController _conter1= TextEditingController();
  void _login(){
    setState(() {
      _conter1.text = _conter.text;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.home,size: 35,color: Colors.grey,),
          SizedBox(height: 20,),
          Text('الصفحة الرئيسية',style: TextStyle(fontSize: 25,color: Colors.grey),),
          SizedBox(height: 20,),
          TextField(
            decoration: InputDecoration(
                labelText: 'Enter your name',labelStyle: TextStyle(color: Colors.black38),
                hintText: 'your name',
                filled: true,
                fillColor:Colors.white,
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                )
            ),
            controller: _conter,
          ),
          SizedBox(height: 20,),
          TextField(
            decoration: InputDecoration(
                labelText:' the Name',labelStyle: TextStyle(color: Colors.black38),
                filled: true,
                fillColor:Colors.white,
                prefixIcon: Icon(Icons.copy),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                )
            ),
            controller: _conter1,
            readOnly: true,

          ),
          SizedBox(height: 20,),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white24,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              ),
              onPressed: (){
                _login();
              },
              child: Text('اضغط هنا',style:TextStyle(fontSize: 15,color:Colors.black ),)
          ),
        ],
      ),

    );
  }
}