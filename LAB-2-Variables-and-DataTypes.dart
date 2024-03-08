void main() {
  const double SPEED_OF_LIGHT = 299792458;

  print("Enter the distance in meters: ");
  double distance = double.parse(stdin.readLineSync()!);

  double travelTime = distance / SPEED_OF_LIGHT;

  print(
      "It takes light approximately $travelTime seconds to travel $distance meters.");
}
