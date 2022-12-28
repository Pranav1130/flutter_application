import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'listpage.dart';

class LoginForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _LoginFormState();
  }

class _LoginFormState  extends State {
 var formkey = GlobalKey <FormState>();
 bool showpass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("LoginForm"),
        ),
        body: Form(
          key: formkey,
          child: ListView(
            children: [
              const Center(child: Text("LoginPage ")),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.visibility_off) ,
                    suffixIcon: Icon(Icons.visibility),
                    labelText: 'UserName',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                  textInputAction: TextInputAction.next,
                  validator: (uname){
                    if( uname!.isEmpty|| !uname.contains('@')){
                      return "enter a valid Uname";
                    }else{
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon:const Icon(
                        Icons.visibility_off) ,
                    suffixIcon:IconButton(
                        onPressed: (){
                          setState(() {
                            if (showpass){
                              showpass= false;
                            }else{
                              showpass = true;
                            }
                          });
                        },
                      icon: Icon(showpass == true?Icons.visibility_off : Icons.visibility,)
                    ),
                    labelText: 'Password',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                  obscureText: showpass,
                  obscuringCharacter: '*',
                  textInputAction: TextInputAction.done,
                  validator: (password){
                    if (password!.isEmpty || password.length < 6){
                      return "Enter a valid Password ,length should be greater than 6";
                    }else{
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100,right: 100),
                child: ElevatedButton(onPressed: () {
                  final valid = formkey.currentState!.validate();

                  if(valid){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Listpage()));
                  }
                }, child: const Text("Login"),),
              )

            ],
          ),
        )
    );
  }
}


