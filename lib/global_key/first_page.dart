import 'package:flutter/material.dart';
// Agarda biz state full widget larning stetiga access(murojat) qilishni xoxlasak "GLOBAL KEY" dan foydalanamiz

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);

  final keyCounter = GlobalKey<CounterWidgetState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("global key tutorial 1"),
        centerTitle: true,
      ),
      body: Center(
        child: CounterWidget(
          key: keyCounter,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final counterState = keyCounter.currentState!;
          counterState.increment();
          debugPrint("COUNTER CURRENT VALUE: ${counterState.counter}");
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  State<CounterWidget> createState() => CounterWidgetState();
}

class CounterWidgetState extends State<CounterWidget> {
  int counter = 0;

  void increment() {
    setState(() {
      counter += 5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      counter.toString(),
      style: const TextStyle(
        fontSize: 40,
        color: Colors.black,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}
