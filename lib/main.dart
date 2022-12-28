
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application/homepage.dart';
import 'package:flutter_application/listpage.dart';
import 'package:flutter_application/login%20with%20validation.dart';

void main() {
  runApp(MaterialApp(
    home: Splashscreen(),
    theme: ThemeData(primarySwatch: Colors.lime),
  ));
}

class Splashscreen  extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => SplashscreenState();
}

class SplashscreenState extends State {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Listpage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          //color: Colors.black, set background field for container
          //  decoration: BoxDecoration(
          //    image: DecorationImage(
          // fit: BoxFit.cover,
          // image: NetworkImage("https://burst.shopifycdn.com/photos/city-lights-through-rain-window.jpg?width=1200&format=pjpg&exif=1&iptc=1))),
          /// set linear background color for container
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin:Alignment.bottomCenter,
                  end:Alignment.topCenter,
                  colors: [
                    Colors.green,
                    Colors.blue,
                    Colors.yellow
                  ])
          ),

          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Image(Image : AssetImage("Badge-Trophy-02-icon.png")
                  Image.asset("assets/icons/christmas.png"),
                  const Text("Animals",style: TextStyle(fontSize: 50,color: Colors.deepOrange),)
                ],
              )
          ),
        )
    );
  }
}