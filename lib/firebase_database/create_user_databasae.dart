

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../userScreen.dart';

class CreateUserDatabase extends StatelessWidget {
  CreateUserDatabase({super.key});

  TextEditingController nameTextConroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextFormField(
            controller: nameTextConroller,
          ),
          const SizedBox(
            height: 15,
          ),
          IconButton(
            onPressed: () async {
              String name = nameTextConroller.text;
              final docUser =
              FirebaseFirestore.instance.collection("users").doc("user-2");

              final UserModel user = UserModel(
                name: "Abdo Ashraf",
                id: 1,
                phone: "46736357",
              );
              //final json =user.toJson();
              // await docUser.set(json);
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
