// Description: Sets in Dart
// Sets are collection of values
// Sets are mutable
// Sets are unordered
// Sets are unique

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

  // hashcode of the set

  final foo1 = 'foo';
  final foo2 = 'foo';
  print(foo1.hashCode); // 117440512
  print(foo2.hashCode); // 117440512
  // if we change one character in the string to uppercase or lowercase then the hashcode will change
}
