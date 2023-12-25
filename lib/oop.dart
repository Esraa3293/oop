class Car {
  String? type;
  double? price;
  int? speed;
  int _numOfDoors = 1;

  Car(
      {required this.type,
      required this.price,
      required this.speed,
      int numOfDoors = 4})
      : _numOfDoors = numOfDoors;

  Car.fromJson(Map<String, dynamic> json) {
    type = json["type"];
    price = json["price"];
    speed = json["speed"];
  }

  void carPrice() {
    print("Car Price = $price");
  }

  void carType() {
    print("Car Type is : $type");
  }

  void carSpeed() {
    print("Car Speed = $speed km/h");
  }

  int get numOfDoors => _numOfDoors;
}

class BMW extends Car {
  BMW(
      {super.numOfDoors,
      required super.type,
      required super.price,
      required super.speed});

  @override
  void carSpeed() {
    print("BMW");
    super.carSpeed();
  }
}

class Audi extends Car {
  Audi({required super.type, required super.price, required super.speed});

  @override
  void carPrice() {
    print("Audi");
    super.carPrice();
  }
}

class Jeep extends Car {
  Jeep({required super.type, required super.price, required super.speed});

  String maxSpeed() {
    if (speed == 400) {
      return "Car runs on Maximum Speed";
    } else {
      return "Normal Speed";
    }
  }
}

void main(List<String> arguments) {
  var car = Car(type: "Toyota", price: 1045540, speed: 400);
  car.carType();
  car.carPrice();
  car.carSpeed();
  print(car.numOfDoors);
  print("=========================================================");

  var car1 = Car.fromJson({
    "type": "Mercedes",
    "price": 2245567.0,
    "speed": 420,
  });
  car1.carType();
  car1.carPrice();
  car1.carSpeed();
  print(car1.numOfDoors);
  print("=========================================================");

  var car2 = BMW(numOfDoors: 3, type: 'BMW', price: 2647819, speed: 390);
  car2.carSpeed();
  print(car2.numOfDoors);
  print("=========================================================");

  var car3 = Audi(type: "Audi", price: 2654913, speed: 380);
  car3.carPrice();
  print("=========================================================");

  var car4 = Jeep(type: "Jeep", price: 2136847, speed: 385);
  car4.carType();
  print(car4.maxSpeed());
}
