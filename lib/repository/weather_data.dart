enum WeatherCondition {
  sunny,
  cloudy,
  rainy,
  stormy,
  windy,
  snowy,
  shity,
}

class WeatherData {
  final String city;
  final double temperature;
  final WeatherCondition weatherCondition;

  WeatherData({
    required this.city,
    required this.temperature,
    required this.weatherCondition,
  });

  String getWeatherConditionString() {
    switch (weatherCondition) {
      case WeatherCondition.sunny:
        return 'Sonnig';
      case WeatherCondition.cloudy:
        return 'Bewölkt';
      case WeatherCondition.rainy:
        return 'Regen';
      case WeatherCondition.stormy:
        return 'Stürmisch';
      case WeatherCondition.windy:
        return 'Windig';
      case WeatherCondition.shity:
        return 'Scheiße';
      case WeatherCondition.snowy:
        return 'Schnee';
    }
  }
}
