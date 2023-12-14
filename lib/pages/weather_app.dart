import 'package:die_wetter_app/repository/weather_data.dart';
import 'package:die_wetter_app/repository/weather_repository.dart';
import 'package:flutter/material.dart';

class WeatherApp extends StatefulWidget {
  final WeatherRepository weatherRepository;

  const WeatherApp({Key? key, required this.weatherRepository})
      : super(key: key);

  @override
  WeatherAppState createState() => WeatherAppState();
}

class WeatherAppState extends State<WeatherApp> {
  late WeatherData currentWeather;

  @override
  void initState() {
    super.initState();

    currentWeather = widget.weatherRepository.getRandomWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentWeather.city,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 30.0,
              ),
            ),
            Text(
              '${currentWeather.temperature}°C',
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 24.0,
              ),
            ),
            Text(
              currentWeather.getWeatherConditionString(),
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 24.0,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            FloatingActionButton.small(
              onPressed: () {
                setState(() {
                  currentWeather = widget.weatherRepository.getRandomWeather();
                });
              },
              child: const Icon(Icons.refresh),
            ),
          ],
        ),
      ),
    );
  }
}
