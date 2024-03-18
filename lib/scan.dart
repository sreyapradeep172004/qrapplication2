import 'package:flutter/material.dart';
import 'package:qrapplication/camera.dart';
import 'package:qrapplication/login.dart';
class Qrpage extends StatefulWidget {
  const Qrpage({Key? key}) : super(key: key);

  @override
  State<Qrpage> createState() => _QrpageState();
}

class _QrpageState extends State<Qrpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 150,
                width: 200,
              ),
            Icon(
            Icons.account_circle_rounded,
            color: Colors.white,
            size: 100,
            ),
              SizedBox(
                width: 100,
                height: 50,
              ),
              // QrImageView(
              //   data: '1234567890',
              //   version: QrVersions.auto,
              //   backgroundColor: Colors.white,
              //   size: 200.0,
              // ),
              SizedBox(
                width: 100,
                height: 50,
              ),
              ElevatedButton(onPressed:(){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Cam() ) );
              }, child: Text('scan'),
                style:TextButton.styleFrom(backgroundColor: Colors.lightGreenAccent) ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
