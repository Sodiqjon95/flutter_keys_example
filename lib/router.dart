import 'package:flutter/material.dart';
import 'package:flutter_keys_example/unique_key/unique_key.dart';
import 'package:flutter_keys_example/value_key/example_1.dart';
import 'package:flutter_keys_example/value_key/example_2.dart';

import 'global_key/first_page.dart';
import 'global_key/second_page.dart';
import 'global_key/third_page.dart';
import 'my_home_page.dart';
import 'object_key/object_key.dart';
import 'utils/constants.dart';

class MyRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return navigateTo(MyHomePage());
        case valKeyEx1:
        return navigateTo(ValKeyEx1());
        case valKeyEx2:
        return navigateTo(ValKeyEx2());
        case unique:
        return navigateTo(UniqueKeyExample());
        case objectKey:
        return navigateTo(ObjectKeyExample());
        case globalKey1:
        return navigateTo(FirstPage());
        case globalKey2:
        return navigateTo(SecondPage());
        case globalKey3:
        return navigateTo(ThirdPage());

      default:
        return navigateTo(
          Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}

MaterialPageRoute navigateTo(Widget widget) => MaterialPageRoute(
  builder: (context) => widget,
);
