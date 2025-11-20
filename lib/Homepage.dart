import 'package:flutter/material.dart';
import 'Secondpage.dart';
class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {
  TextEditingController _conter1= TextEditingController();
  TextEditingController _conter2= TextEditingController();

  void _login(){
    setState(() {
      _conter2.text = _conter1.text;
    });
  }

  void _Navgitor(){

    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>Secondpage(
            name: _conter1.text

        )));
  }

  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(backgroundColor: Colors.grey,
        title: Text('Home page',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
        centerTitle: true,),
      body:Padding(padding: const EdgeInsets.all(5.0),
        child:Column(
          children: [
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
              controller: _conter1,
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
              controller: _conter2,
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
            SizedBox(height: 20,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white24,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                ),
                onPressed: (){
                  _Navgitor();
                },
                child: Text('انتقل الى الصفحة الثانية',style:TextStyle(fontSize: 15,color:Colors.black ),)
            ),



          ],
        ),
      ),
    );
  }
}