import 'package:flutter/material.dart';

class ValKeyEx2 extends StatefulWidget {
  const ValKeyEx2({Key? key}) : super(key: key);

  @override
  State<ValKeyEx2> createState() => _ValKeyEx2State();
}

class _ValKeyEx2State extends State<ValKeyEx2> {
  var users = [
    User(name: "Jack", icon: Icons.ac_unit),
    User(name: "Jhon", icon: Icons.accessibility),
    User(name: "Jet Li", icon: Icons.add_alert_sharp),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Valu key example 2"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ReorderableListView.builder(
            itemBuilder: (context, index){
              final user = users[index];
              return ListTile(
                key:  ValueKey(user.name),
                leading: Icon(user.icon),
                title: Text(user.name),
              );
            },
            itemCount: users.length,
            onReorder: (oldIndex, newIndex) {
              final index = newIndex > oldIndex ? newIndex -1: newIndex;
              final user = users.removeAt(oldIndex);
              users.insert(index, user);
            },
          ),
        ),
      ),
    );
  }
}

class User {
  User({required this.name, required this.icon});

  final IconData icon;
  final String name;
}
