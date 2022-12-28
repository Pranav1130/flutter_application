import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  const Text("HOME"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text("LoginPage",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            )),
        const Padding(padding: EdgeInsets.all(20),
        child : TextField(
          decoration: InputDecoration(
            hintText: "Enter User name",
            labelText: "USERNAME",
            prefixIcon: Icon(Icons.account_box_sharp),
            border: OutlineInputBorder())
          ),
        ),
          const Padding(padding: EdgeInsets.only(left: 20,right: 20 ,bottom: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter Password",
                labelText: "PASSWORD",
                prefixIcon: Icon(Icons.visibility_off),
                suffixIcon: Icon(Icons.visibility_outlined),
                border: OutlineInputBorder())

              ),
            ),

          ElevatedButton(onPressed: () {}, child: const Text("Login")),
          const SizedBox(height: 30,),
             TextButton(
                onPressed: () {},
                child:const Text("Not a user Register here"))

          ],
          ));
    
  }
  }

