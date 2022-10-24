import 'package:flutter/material.dart';

import '../widgets/color_state_widget.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  final containerKey = GlobalKey<MyCustomContainerState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Third Page"),),
      body: Column(children: [
        MyCustomContainer(
          key: containerKey,
        ),
        ElevatedButton(onPressed: (){
          var state= containerKey.currentState!;
          setState(() {
            state.color= generateColor();
          });
        }, child: const Text("button"))
      ],),
    );
  }
}
class MyCustomContainer extends StatefulWidget {
  const MyCustomContainer({Key? key}) : super(key: key);

  @override
  State<MyCustomContainer> createState() => MyCustomContainerState();
}

class MyCustomContainerState extends State<MyCustomContainer> {
  Color color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          color: color,
          width: 200,
          height: 200,
        ));
  }
}