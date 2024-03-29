import 'dart:collection';

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

  //Collections

  //Lists
    // THERE IS NO ARRAYS IN DART
    // two ways of creating a list
    var numbers = [1,2,3,4];
    List<int> listNumbers = <int>[];
    // If a type is not specified and add a different type,
    // 'dynamic' type will be inferred
    List dynamicList = [1,2];
    dynamicList.add("value");
    // This creates a dynamic type list
    List inferredDynamic = [];
    inferredDynamic.add("");
    inferredDynamic.add(2);

  // Sets
    var numberSet = { 1, 2, 3, 4};
    Set<int> numberSet2 = {};
    var numberSet3 = <int>{};
    var actuallyAMap = {}; // this will actually create a map

  // Queue
    var myQueue = Queue(); // Dynamic type
    var typedQueue = Queue<String>();

  // Maps
    var myMap = { 'one' : 1, 'two' : 2 };
    var myMap2 = {};
    var myMap3 = <String, int>{};

// Flow Control
  // Assert
    assert(myMap3.isEmpty); // throws exception if false

  // if
  if (myMap3.isEmpty) {
    1;
  } else {
    3;
  }

  colors myColor = colors.blue;
  // switch
  // a switch can take any type of variable
  switch(myColor) {
    case colors.blue: {
      print('blue');
      break;
    }
    case colors.red: {
      print('red');
      break;
    }
  }

  var myLogic = 1;
  // Loops
    // While
    do {
      print('My value $myLogic');
      myLogic += 1;
    } while (myLogic < 3);

    myLogic = 0;

    while (myLogic < 3) {
      print('My value $myLogic');
      myLogic += 1;
    };

    // for
    for(int i = 0; i < numbers.length; i++) {
      print(numbers.elementAt(i));
    }
    numbers.forEach((element) { print(element); }); // however this is not recommended after Dart 2.0
    for (var element in numbers) { print(element); } // this is how it should look like instead

  // when calling an function with different named parameters
  // you have to specify what parameter you are assigning value to, only
  // named parameters can be declared using its name
  sayHello(second: 'yo');
  // We can assign values from functions just as in Java
  var sayIt = sayHello(name: 'Me');

  // the compiler won't complain with this anonymous function syntax
  numbers.forEach(print);

  // In dart there is a "on" block, additionally to "try", "catch" and "finally"
  // blocks, in this block we can declare an specific error and it has to be located
  // before the catch block
  try {
    print('1');
    throw Exception('my exception');
  } on NoSuchMethodError {
    print('specific');
  } catch (e) {
    print('2');
  } finally {
    print('finally');
  }
}

// brackets {} indicates named and [] indicates the parameter is optional, named/optional parameter
// has to have a default value assigned to it, a function can have both, positional parameters
// and named/optional parameters. Positional parameters have to be declared before optional
String sayHello({String name = '', String second = ''}) {
  print('Hello $name $second');
  return name;
}
