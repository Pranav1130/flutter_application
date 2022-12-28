import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MY PET SHOP")),
      body: ListView(
        children:  [
          Card(
            elevation: 30,
            shadowColor: Colors.amber,
            color: Colors.lightBlue,
            child: ListTile(
              title: Text(" Pets Shop"),
              subtitle: Text("KOCHI"),
              leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://media.istockphoto.com/id/1179573533/vector/vector-group-of-pets-dog-cat-humming-bird-parrot-chameleon-butterfly-rabbit-isolated-on.jpg?s=612x612&w=0&k=20&c=SFDqjevwsQ00ZoZWFQRhscVxnrrkVDns0KjDH-hUynA=")),
              trailing: Wrap(

                children: const [
                  Icon(Icons.message),
                  SizedBox(width: 20,),
                  Icon(Icons.phone),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.greenAccent,
            child: ListTile(
            title: Text("PetStore 2"),
            subtitle: Text("description"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                      "https://media.istockphoto.com/id/1027001728/vector/vector-of-dog-and-cat-face-design-on-a-white-background-pet-animal-easy-editable-layered.jpg?s=612x612&w=0&k=20&c=MfJHg7Grf173xyLWoMzitTzRdn7d_BqldiIgSeClzPM=")),

            trailing: Icon(Icons.phone),
          ),
          ),
          Card(
            child: ListTile(
              title: Text("PetStore 3"),
              subtitle: Text("description"),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://media.istockphoto.com/id/1053429364/vector/vector-of-dog-and-cat-head-design-on-a-white-background-pet-animal-easy-editable-layered.jpg?s=612x612&w=0&k=20&c=MP-vmCnXP2yoyBM6cmdBP9Lm7LLlCvC8cb80lej27FA=")),
              trailing: Icon(Icons.phone),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("PetStore 4"),
              subtitle: Text("description"),
              leading: Image(
                  image: NetworkImage(
                      "https://www.shutterstock.com/image-vector/animal-pet-logo-designs-260nw-1127879345.jpg")),
              trailing: Icon(Icons.phone),
            ),
          ),
          ListTile(
            title: Text("PetStore 5"),
            subtitle: Text("description"),
            leading: Image(
                image: NetworkImage(
                    "https://www.shutterstock.com/image-vector/animal-pet-logo-designs-260nw-1127879345.jpg")),
            trailing: Icon(Icons.phone),
          ),
        ],
      ),
    );
  }
}
