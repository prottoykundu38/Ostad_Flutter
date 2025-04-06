abstract class Vehicle {
  int? _speed;

  void move();

  void setSpeed(int speed) {
    _speed = speed;
  }
}

class Car extends Vehicle {
  void move() {
    print("The car is moving at $_speed km/h");
  }
}

void main() {
  Car c1 = Car();
  c1.setSpeed(250);
  c1.move();
}
