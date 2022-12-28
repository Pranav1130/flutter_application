import 'package:flutter/material.dart';

import 'main.dart';

void main(){
  runApp(MaterialApp(home : List_with_Builder(),));

}

class List_with_Builder  extends StatelessWidget{

  var datas =[ 'item 1', 'item 2', 'item3', 'item4','item5','item6','item7'];
  var colors = [ 700,600,500,400,300,200,100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const Text("LIST WITH BUILDER"),),
      body: ListView.builder(
        itemCount: datas.length,
          itemBuilder: (BuildContext context, int index){
            return Container(
              height: 50,
              width: 100,
              color: Colors.purple [colors[index]],
              child: Center(child: Text(datas[index]),),
            );

      })
      );


  }
}