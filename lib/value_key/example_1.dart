import 'package:flutter/material.dart';

class ValKeyEx1 extends StatefulWidget {
  const ValKeyEx1({Key? key}) : super(key: key);

  @override
  State<ValKeyEx1> createState() => _ValKeyEx1State();
}

class _ValKeyEx1State extends State<ValKeyEx1> {
  bool showEmail = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("value key exam one"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              if (showEmail)
                TextField(
                  key: ValueKey(UserModel(age: 1)),
                  decoration: const InputDecoration(border: OutlineInputBorder(), labelText: "Email"),
                ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                key: ValueKey(UserModel(age: 2)),
                decoration: const InputDecoration(border: OutlineInputBorder(), labelText: "username"),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            showEmail = false;
          });
        },
        child: const Text("press"),
      ),
    );
  }
}

class UserModel {
  UserModel({required this.age});

  final int age;

  @override
  bool operator ==(Object other) {
    return identical(this, other) || other is UserModel && age == other.age;
  }

  @override
  int get hashCode => age.hashCode;
}
