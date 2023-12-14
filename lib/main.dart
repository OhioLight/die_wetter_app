import 'package:die_wetter_app/pages/weather_app.dart';
import 'package:die_wetter_app/repository/weather_repository.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final WeatherRepository weatherRepository = WeatherRepository();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Wetter-App'),
        ),
        body: WeatherApp(weatherRepository: weatherRepository),
      ),
    );
  }
}
