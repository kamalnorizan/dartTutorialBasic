class Owner {
  late String name;
  late int age;
  List<Car>? cars;

  Owner(this.name, {required this.age, this.cars});

  void displayOwner() {
    print('Owner is ' + this.name + ', Age: ' + this.age.toString());

    if (cars != null && cars!.isNotEmpty) {
      this.cars!.asMap().forEach((index, car) => car.displayCar(index));
    }
  }
}

class Car {
  int tyres = 4;
  double cc = 1.3;
  String? brand = 'Proton';
  late String color;

  Car({required this.tyres, required this.cc, this.brand, required this.color});

  void displayCar(int carNumber) {
    print(
      'Car ' +
          carNumber.toString() +
          ': Brand - ' +
          this.brand.toString() +
          ', Color - ' +
          this.color +
          ', Tyres Count - ' +
          this.tyres.toString(),
    );
  }
}

void main() {
  Car car1 = Car(cc: 1.8, brand: 'Honda Civic', color: 'White', tyres: 5);
  Car car2 = Car(cc: 2.0, brand: 'Proton X50', color: 'Black', tyres: 5);
  Car car3 = Car(cc: 1.5, brand: 'Honda City', color: 'Blue', tyres: 4);

  Owner owner1 = Owner('Saiful', age: 25, cars: [car1, car2]);
  Owner owner2 = Owner('Zain', age: 18);

  car1.displayCar(1);
  car2.displayCar(2);
  car3.displayCar(3);

  owner1.displayOwner();
  owner2.displayOwner();
}
