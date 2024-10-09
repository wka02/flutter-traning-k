import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({required String title,super.key,}) : _title = title;

  final String _title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget._title),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              flex: 25,
              child: Container(),
            ),
            const Expanded(
              flex: 50,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: Placeholder(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16, bottom: 16),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 50,
                          child: Text('** ℃',
                              style: TextStyle(color: Colors.blue),
                              textAlign: TextAlign.left,),
                        ),
                        Expanded(
                          flex: 50,
                          child: Text('** ℃',
                              style: TextStyle(
                                color: Colors.red,
                              ),
                              textAlign: TextAlign.right,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 25,
              child: Container(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
