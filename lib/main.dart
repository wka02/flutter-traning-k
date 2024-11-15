import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'package:yumemi_weather/yumemi_weather.dart';

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
  const MyHomePage({
    required String title,
    super.key,
  }) : _title = title;

  final String _title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String weather = '';

  String imageURL = '';

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
            Expanded(
              flex: 50,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Expanded(
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
                          child: imageURL == ''?const Placeholder(): SvgPicture.network(
                            imageURL,
                            placeholderBuilder: (BuildContext context) =>
                                Container(
                                    padding: const EdgeInsets.all(30.0),
                                    child: const CircularProgressIndicator()),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 16, bottom: 16),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 50,
                                child: Text(
                                  '** ℃',
                                  style: TextStyle(color: Colors.blue),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Expanded(
                                flex: 50,
                                child: Text(
                                  '** ℃',
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 50,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 80),
                        child: Row(
                          children: [
                            const Expanded(
                              flex: 50,
                              child: Text(
                                'Close',
                                style: TextStyle(color: Colors.blue),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              flex: 50,
                              child: TextButton(
                                onPressed: () {
                                  final yumemiWeather = YumemiWeather();
                                  final weatherCondition =
                                      yumemiWeather.fetchSimpleWeather();
                                  print('Weather Condition: $weatherCondition');
                                  setState(() {
                                    if(weather == 'sunny'){
                                      imageURL = 'https://raw.githubusercontent.com/yumemi-inc/flutter-training-template/refs/heads/main/docs/sessions/images/api/sunny.svg';
                                    } else if (weather == 'cloudy'){
                                      imageURL = 'https://raw.githubusercontent.com/yumemi-inc/flutter-training-template/refs/heads/main/docs/sessions/images/api/cloudy.svg';
                                    } else if (weather == 'rainy'){
                                      imageURL = 'https://raw.githubusercontent.com/yumemi-inc/flutter-training-template/refs/heads/main/docs/sessions/images/api/rainy.svg';
                                    }
                                    weather = weatherCondition;
                                  });
                                },
                                child: const Text(
                                  'Reload',
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
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
