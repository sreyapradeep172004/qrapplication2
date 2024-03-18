import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:qrapplication/scan.dart';
import 'package:http/http.dart' as http;

class RegApp extends StatefulWidget {
  const RegApp({Key? key}) : super(key: key);

  @override
  State<RegApp> createState() => _RegAppState();
}

class _RegAppState extends State<RegApp> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController rollnoController = TextEditingController();
  void reg() async {
    print(nameController.text);
    print(emailController.text);
    print(passwordController.text);
    print(rollnoController.text);
    Uri uri = Uri.parse('https://scnner-web.onrender.com/api/register');
    var response = await http.post(uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
        body: jsonEncode({
          'name': nameController.text,
          'email': emailController.text,
          'password': passwordController.text,
          'rollno': rollnoController.text,
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
              Text(
                'Registration',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              SizedBox(
                width: 50,
                height: 30,
              ),
              Container(
                width: 300,
                height: 80,
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      labelText: 'Enter your name'),
                ),
              ),
              Container(
                width: 300,
                height: 80,
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      labelText: 'enter your email'),
                ),
              ),
              Container(
                width: 300,
                height: 80,
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      labelText: 'enter your password'),
                ),
              ),
              Container(
                width: 300,
                height: 80,
                child: TextField(
                  controller: rollnoController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      labelText: 'enter your rollno'),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  reg();

                },
                child: Text('LOGIN'),
                style: TextButton.styleFrom(backgroundColor: Colors.lime),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
