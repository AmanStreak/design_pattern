///Adapter Pattern
// The Adapter Pattern allows incompatible interfaces to work together.
// It acts as a bridge between two incompatible interfaces, enabling them to communicate.
// This is particularly useful when you want to use a class that doesn't match the interface you need.

abstract class SpeedConverter {
  double convertToKPH();
}

abstract class FetchSpeed {
  double fetchingSpeedInMPH();
}

class Speed implements FetchSpeed{
  @override
  double fetchingSpeedInMPH() {
    return 245;  ///Going insanely fast.
  }
}

class ShowSpeed implements SpeedConverter {

  FetchSpeed speed;
  ShowSpeed({required this.speed});

  @override
  double convertToKPH() {
    return speed.fetchingSpeedInMPH() * 1.60934;
  }
  
}

void main() {
  ShowSpeed showSpeed = ShowSpeed(speed: Speed());
  double speedInKPH = showSpeed.convertToKPH();
  print(speedInKPH);
}

