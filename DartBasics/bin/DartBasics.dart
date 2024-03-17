import 'dart:collection';
import 'dart:ffi';
import 'dart:js_util';

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


}
