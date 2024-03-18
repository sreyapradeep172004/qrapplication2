import 'package:flutter/material.dart';
import 'package:qrapplication/login.dart';
class Last extends StatefulWidget {
  const Last({Key? key}) : super(key: key);

  @override
  State<Last> createState() => _CamState();
}

class _CamState extends State<Last> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        body: Center(
          child: Column(
            children: [
              SizedBox(
                width: 100,
                height: 200,
              ),
              CircleAvatar(backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS09TRxJxKvffb914NbLMVUBFiyweufMO0UcQ&usqp=CAU'),radius: 60),
              Text('SOURAV K',style: TextStyle(fontSize: 34),),
              Text('FLUTTER DEVELOPER',style: TextStyle(fontSize: 14),),
              Container(
                width: 300,
                height: 80,
                child: TextField(

                  decoration: InputDecoration(
                    filled:true,
                    fillColor: Colors.white,


                ),

                ),

              ),
              Container(
                width: 300,
                height: 80,
                child: TextField(

                  decoration: InputDecoration(filled:true,
                    fillColor: Colors.white,



                    labelText: 'enter your email'
                ),
                ),
              ),
              ElevatedButton(onPressed:(){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>MyApp() ) );
              }, child: Text('SIGN OUT'),
                style:TextButton.styleFrom(backgroundColor: Colors.lime) ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
