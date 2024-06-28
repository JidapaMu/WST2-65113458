class Person {
  //สร้างคลาส `Person`
  String _name; //private member จะใส่_ นำหน้าเสมอ
  Person(this._name);
  //Getter
  String get name => _name;
  //Setter
  set name(String name) => _name = name;
}

class Engine {
  //สร้างคลาส `Engine`
  String _model;
  int _speed;
  Engine(this._model, this._speed);

  //Getter
  String get model => _model;
  int get speed => _speed;

  //Setter
  set model(String model) => _model = model;
  set speed(int speed) => _speed = speed;

  void displayEngineInfo() {
    print("Engine Model: $_model");
    print("Max Speed: $_speed km/h");
  }
}

class Car {
  //สร้างคลาส `Car`
  String _brand;
  String _model;
  Person _owner;
  Engine _engine;

  Car(this._brand, this._model, this._owner, this._engine);

  //Getters
  String get brand => _brand;
  String get model => _model;
  Person get owner => _owner;
  Engine get engine => _engine;

  //Setters
  set brand(String brand) => _brand = brand;
  set model(String model) => _model = model;
  set owner(Person owner) => _owner = owner;
  set engine(Engine engine) => _engine = engine;
  
  void displayCarInfo() {
    print("Car Brand: $_brand");
    print("Car Model: $_model");
    print("Owner: ${_owner.name}");
    print("Engine Info:");
    _engine.displayEngineInfo();
  }

  void run() {
    print("Driving at ${_engine.speed} km/h");
  }
}

class Honda extends Car { //สร้างคลาส `Honda` ที่สืบทอดจากคลาส `Car`
  String _color;

  Honda(String brand, String model, Person owner, Engine engine, this._color)
      : super(brand, model, owner, engine);

  //Getter
  String get color => _color;

  //Setter
  set color(String color) => _color = color;

  @override
  void run() {
    print("Driving Honda at 120 km/h");
  }

  @override
  void displayCarInfo() {
    print("Car Brand: $brand");
    print("Car Model: $model");
    print("Car Color: $_color");
    print("Owner: ${owner.name}");
    print("Engine Info:");
    engine.displayEngineInfo();
  }
}


  void main() {
  Person jidapa = Person("Jidapa");
  Engine hondaEngine = Engine("VTEC Turbo", 200);
  Car car1 = Car("Toyota", "Corolla", jidapa, hondaEngine);
  Honda hondaCar = Honda("Honda", "Civic", jidapa, hondaEngine, "Red");

  print("Car 1 Information:");
  car1.displayCarInfo();
  print("");

  print("Honda Car Information:");
  hondaCar.displayCarInfo();
  print("");

  print("Driving Car 1:");
  car1.run();
  print("");

  print("Driving Honda Car:");
  hondaCar.run();
}