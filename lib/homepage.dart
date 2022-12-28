import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text("HOME"),
      )
          ,body: const Center(
        child: Text("WELCOME",style: TextStyle(fontSize: 50,color: Colors.black),),
    ),
    );
    throw UnimplementedError();
  }
}