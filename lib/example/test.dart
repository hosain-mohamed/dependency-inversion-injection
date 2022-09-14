import 'package:dependency/example/car.dart';
import 'package:dependency/example/engine.dart';
import 'package:dependency/example/new_engine.dart';

// Dependency Injection

void main(List<String> args) {
  final Engine engine = NewEngine();

  final Car car = Car(engine);

  car.engine.run();

  car.engine.turnOff();
}
