import 'dart:html';

import 'package:flutter/material.dart';
import 'package:qrapplication/registration.dart';
import 'package:qrapplication/scan.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _State();
}

class _State extends State<MyApp> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  void App ()async{
    Uri uri = Uri.parse('https://scnner-web.onrender.com/api/register');
    var response = await http.post(uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
        body: jsonEncode({
          'email': emailController.text,
          'password': passwordController.text,

        }));
    if(response.statusCode==200){}
    else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('registration')));
    }}


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
              Text('Login',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.red), ),
              SizedBox(
                width: 50,
                height: 30,
              ),
              Container(
                width: 300,
                height: 80,
                child: TextField(
                  controller:emailController ,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    labelText: 'email id'
                ),

                ),
              ),
              Container(
                width: 300,
                height: 80,
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    labelText: 'password'
                ),

                ),
              ),
              ElevatedButton(onPressed:(){App();
                Navigator.push(context,MaterialPageRoute(builder: (context)=> Qrpage() ) );
              }, child: Text('LOGIN'),
                style:TextButton.styleFrom(backgroundColor: Colors.lime) ,
              ),
              SizedBox(
                height: 30,
                width: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Do you have an account?'),
                  TextButton(onPressed:(){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>RegApp() ) );
                  }, child: Text('REGISTRATION'),
                    style:TextButton.styleFrom(backgroundColor: Colors.greenAccent),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

