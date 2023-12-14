import 'dart:math';

import 'package:die_wetter_app/repository/weather_data.dart';

class WeatherRepository {
  final List<WeatherData> weatherDataList;

  WeatherRepository({this.weatherDataList = const []});

  WeatherData getRandomWeather() {
    final random = Random();
    final randomCity = _getRandomCity();
    final randomTemperature = _getRandomTemperature();
    final randomCondition = _getRandomWeatherCondition(random);

    return WeatherData(
      city: randomCity,
      temperature: randomTemperature,
      weatherCondition: randomCondition,
    );
  }

  String _getRandomCity() {
    final cities = [
      "Tokyo",
      "Delhi",
      "Shanghai",
      "Sao Paulo",
      "Mumbai",
      "Beijing",
      "Istanbul",
      "Karachi",
      "Dhaka",
      "Moscow",
      "Manila",
      "Tianjin",
      "Mumbai",
      "Karachi",
      "Beijing",
      "Istanbul",
      "Dhaka",
      "Moscow",
      "Jakarta",
      "Tokyo",
      "Seoul",
      "London",
      "New York",
      "Mexico City",
      "Cairo",
      "Bangkok",
      "Tehran",
      "Buenos Aires",
      "Kolkata",
      "Lagos",
      "Kinshasa",
      "Rio de Janeiro",
      "Lahore",
      "Lima",
      "Bangkok",
      "Chennai",
      "New York",
      "Shenzhen",
      "Lahore",
      "Nanjing",
      "Lima",
      "Jakarta",
      "Cairo",
      "Kinshasa",
      "Bogota",
      "Johannesburg",
      "Baghdad",
      "Riyadh",
      "Santiago",
      "St. Petersburg",
      "Ankara",
      "Berlin",
      "Madrid",
      "Casablanca",
      "Accra",
      "Dubai",
      "Amsterdam",
      "Rome",
      "Berlin",
      "Vienna",
      "Prague",
      "Warsaw",
      "Munich",
      "Brussels",
      "Barcelona",
      "Budapest",
      "Copenhagen",
      "Milan",
      "Athens",
      "Oslo",
      "Helsinki",
      "Zurich",
      "Stockholm",
      "Vienna",
      "Warsaw",
      "Frankfurt",
      "Stuttgart",
      "Zurich",
      "Geneva",
      "Bern",
      "Amsterdam",
      "Rotterdam",
      "The Hague",
      "Utrecht",
      "Eindhoven",
      "Groningen",
      "Maastricht",
      "Paris",
      "Marseille",
      "Lyon",
      "Toulouse",
      "Nice",
      "Nantes",
      "Strasbourg",
      "Bordeaux",
      "Lille",
      "Tokyo",
      "Osaka",
      "Kyoto",
      "Yokohama",
      "Sapporo",
      "Fukuoka",
      "Nagoya",
      "Sydney",
      "Melbourne",
      "Brisbane",
      "Perth",
      "Adelaide",
      "Auckland",
      "Wellington",
      "Christchurch",
      "Hamilton",
      "Wellington",
      "Christchurch",
      "Hamilton",
      "Singapore",
      "Kuala Lumpur",
      "Jakarta",
      "Bangkok",
      "Manila",
      "Hanoi",
      "Ho Chi Minh City",
      "Phnom Penh",
      "Yangon",
      "Seoul",
      "Busan",
      "Incheon",
      "Daegu",
      "Daejeon",
      "Gwangju"
    ];
    final randomIndex = Random().nextInt(cities.length);
    return cities[randomIndex];
  }

  double _getRandomTemperature() {
    double temperature = Random().nextDouble() * 50 - 10;
    return double.parse(temperature.toStringAsFixed(1));
  }

  WeatherCondition _getRandomWeatherCondition(Random random) {
    const values = WeatherCondition.values;
    return values[random.nextInt(values.length)];
  }
}
