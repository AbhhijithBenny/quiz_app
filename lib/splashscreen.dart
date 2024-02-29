import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app/home.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () { Navigator.push(context, MaterialPageRoute(builder: (context)=>Question()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      /*appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
        title: Text('WELCOME TO INSTAGRAM'),
      ),*/
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Container(
            width: 370,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black, //color of border
                  width: 2, //width of border
                ),
                borderRadius: BorderRadius.circular(5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                    'https://th.bing.com/th/id/OIP.FBRsnCP9wE84UVW1Kkv5YwHaHa?w=198&h=198&c=7&r=0&o=5&pid=1.7'),
               /* TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                    filled: true,
                    fillColor: Colors.black45,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    filled: true,
                    fillColor: Colors.black45,
                  ),
                )*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
