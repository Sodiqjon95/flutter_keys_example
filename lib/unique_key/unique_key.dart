import 'package:flutter/material.dart';

import '../widgets/color_state_widget.dart';

// Umuman olganda keylar widgetni joriy vaziyatini saqlab qolishda ishlatiladi
//2 ta bir xil widget kelib qosa ularni flutter shunchaki farqlamadi
// bunday vaziyatda biz Unique key beramiz
//UniqueKey va ValueKeyning  1 1 idan farqi Value keyga doim o'zimiz qimat berishimiz krk

class UniqueKeyExample extends StatefulWidget {
  const UniqueKeyExample({Key? key}) : super(key: key);

  @override
  State<UniqueKeyExample> createState() => _UniqueKeyExampleState();
}

class _UniqueKeyExampleState extends State<UniqueKeyExample> {
  late List<Widget> children;

  @override
  void initState() {
    children = [
      ColorStateWidget(key: UniqueKey(), text: '2'),
      ColorStateWidget(key: UniqueKey(), text: '1'),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Unique key example"),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: children,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.swap_horiz,
          size: 32,
        ),
        onPressed: () => setState(() {
          final child = children.removeAt(0);
          children.insert(1, child);
        }),
      ),
    );
  }
}
