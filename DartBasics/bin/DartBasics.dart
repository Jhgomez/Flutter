import 'package:dart_basics/DartBasics.dart' as dart_basics;
import 'dart:io';
import 'dart:async';

enum colors {
  red,
  blue
}

void main(List<String> arguments) {
  print('Hello world: ${dart_basics.calculate()}!');

  // we can use var or specific type when declaring variables
  // however when declaring a variable without value will make the variable
  // of dynamic type
  bool isTrue;
  var isTrueTwo;
  isTrue = false;
  isTrue = true;
  isTrueTwo = true;
  isTrueTwo = "";

  // number is the supperclass and it has only two child int and double only
  num numero = 9;
  int integer = 89;
  double doble = 3.3;

  // User Input
  stdout.write('What is your name?\r\n');
  String? name = stdin.readLineSync();

  name!.isEmpty ? stderr.write('name is empty') : stdout.write('Hello $name\r\n');
  // name?.isEmpty ? stderr.write('Name is empty') : stdout.write('Hello $name \r\n');

}
