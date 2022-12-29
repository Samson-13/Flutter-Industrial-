import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = -10;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  void something() {
    setState(() {
      _counter = 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: const Center(
        child: const Text("Samson"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Welcome Samson"),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text('$_counter',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontSize: 60,
                      color: Colors.amber,
                    )),
            const Text(
              "Samson is here",
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.green,
              child: Icon(Icons.refresh),
            ),
            const Icon(Icons.access_alarm_outlined),
            const TextField(),
            ElevatedButton(onPressed: _reset, child: const Text("Reset")),
            ElevatedButton(
                onPressed: _incrementCounter, child: const Text("Add")),
            ElevatedButton(onPressed: something, child: const Text("Services")),
            ElevatedButton(
                onPressed: _decrementCounter, child: const Text("Decrement"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
