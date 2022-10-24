import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keys_example/utils/constants.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Keys"),
      centerTitle: true,),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        ElevatedButton(onPressed: (){
          Navigator.pushNamed(
            context,valKeyEx1
          );
        }, child: const Text("Value Key example 1")),
        ElevatedButton(onPressed: (){
          Navigator.pushNamed(
            context,valKeyEx2
          );
        }, child: const Text("Value Key example 2")),
        ElevatedButton(onPressed: (){
          Navigator.pushNamed(
            context,unique
          );
        }, child: const Text("Unique Key example ")),
        ElevatedButton(onPressed: (){
          Navigator.pushNamed(
            context,objectKey
          );
        }, child: const Text("Object Key example ")),
        ElevatedButton(onPressed: (){
          Navigator.pushNamed(
            context,globalKey1
          );
        }, child: const Text("globalKey Key example 1")),
        ElevatedButton(onPressed: (){
          Navigator.pushNamed(
            context,globalKey2
          );
        }, child: const Text("globalKey Key example 2")),
        ElevatedButton(onPressed: (){
          Navigator.pushNamed(
            context,globalKey3
          );
        }, child: const Text("globalKey Key example 3")),
      ],),
    );
  }
}
