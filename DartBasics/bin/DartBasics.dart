import 'package:dart_basics/DartBasics.dart' as dart_basics;

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
}
