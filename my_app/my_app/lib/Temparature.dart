class Temparature {
  late double Celcius;

  void setTemparature(double tempCelcius) {
    Celcius = tempCelcius;
  }

  void showCelcius() {
    print('Temparature in Celcius is $Celcius');
  }

  double ToFahrenheit() {
    return Celcius * 9 / 5 + 32;
  }
}
