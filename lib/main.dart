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
                  Expanded(
                    flex: 50,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 0,
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
                                  textAlign: TextAlign.center,),
                              ),
                              Expanded(
                                flex: 50,
                                child: Text('** ℃',
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                  textAlign: TextAlign.center,),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 50,
                    child:Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top:80),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 50,
                              child: Text('Close',
                                style: TextStyle(color: Colors.blue),
                                textAlign: TextAlign.center,),
                            ),
                            Expanded(
                              flex: 50,
                              child: Text('Reload',
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                                textAlign: TextAlign.center,),
                            ),
                          ],
                        ),
                      ),
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
    );
  }
}
