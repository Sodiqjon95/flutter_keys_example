import 'package:flutter/material.dart';
import 'package:flutter_keys_example/router.dart';
import 'package:flutter_keys_example/utils/constants.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      initialRoute: home,
      onGenerateRoute: MyRouter.generateRoute,
    );
  }
}

