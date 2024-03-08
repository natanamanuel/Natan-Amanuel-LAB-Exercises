import 'package:weather_api/weather_api.dart'; // Example name

Future<void> fetchWeatherData() async {
  WeatherApi weatherApi = WeatherApi();
  WeatherData weather =
      await weatherApi.getWeather("London"); // Replace with your location
  print("Current temperature: ${weather.temperature}°C");
  print("Weather conditions: ${weather.description}");
}

void main() async {
  await fetchWeatherData();
}
