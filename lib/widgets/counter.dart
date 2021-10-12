import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void increment() {
    setState(() {
      _counter++;
    });
  }

  void decrement() {
    setState(() {
      _counter--;
    });
  }

  void reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$_counter",
              style: const TextStyle(fontSize: 70),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () => increment(),
                  child: const Icon(Icons.add),
                ),
                const SizedBox(width: 50),
                FloatingActionButton(
                  onPressed: () => decrement(),
                  child: const Icon(Icons.remove),
                )
              ],
            ),
            FloatingActionButton(
              onPressed: () => reset(),
              child: const Icon(Icons.keyboard_return_rounded),
            )
          ],
        ),
      ),
    );
  }
}
