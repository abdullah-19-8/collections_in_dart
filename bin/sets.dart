// Description: Sets in Dart
// Sets are collection of values
// Sets are mutable
// Sets are unordered
// Sets are unique

import 'package:collection/collection.dart';

void main(List<String> args) {
  final names = {'John', 'Doe', 'Jane'};

  names.add('value');
  names.add('value');
  names.add('value');

  print(names); // {value, John, Doe, Jane}

  print('---------------------');

  final names2 = ['John', 'Doe', 'Jane', 'John', 'Doe', 'Jane']; // list
  final uniqueNames = {...names2}; // set
  print(names2); // [John, Doe, Jane, John, Doe, Jane]
  print(uniqueNames); // {John, Doe, Jane}

  print('---------------------');

  // hashCode of the set

  final foo1 = 'foo';
  final foo2 = 'foo';
  print(foo1.hashCode); // 117440512
  print(foo2.hashCode); // 117440512
  // if we change one character in the string to uppercase or lowercase then the hashCode will change

  print('---------------------');

  final foo3 = {'foo'};

  if (foo3.contains('foo')) {
    print('foo is in the set');
  } else {
    print('foo is not in the set');
  }

  print('---------------------');

  // Set equality
  // you can't compare two sets using == operator like this

  final ages = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  final ages2 = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

  if (ages == ages2) {
    print('ages and ages2 are equal');
  } else {
    print('ages and ages2 are not equal');
  }

  print('---------------------');

  // Set equality
  // you can compare two sets using Set equality

  if (SetEquality().equals(ages, ages2)) {
    print('ages and ages2 are equal');
  } else {
    print('ages and ages2 are not equal');
  }

  print('---------------------');

  // even if the order of the elements is different then the sets are equal

  final ages3 = {1, 2, 3, 4, 7, 6, 5, 9, 8, 10};

  if (SetEquality().equals(ages, ages3)) {
    print('ages and ages3 are equal');
  } else {
    print('ages and ages3 are not equal');
  }
}
