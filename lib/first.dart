import 'dart:async';
import 'package:flutter/material.dart';
import 'main.dart';


class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);


  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  Timer? timer;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.endOfFrame.then((_){
      timer = Timer(
        const Duration(milliseconds : 500),
            () {
          print('遷移完了');
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const MyHomePage(title: '',),
            ),
          );
        },
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
          color: Colors.green,
    );
  }
}
