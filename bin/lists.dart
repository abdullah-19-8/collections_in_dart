// Description: Lists
// list are collection of values
// list are mutable
// list are called as arrays in other languages

void main(List<String> args) {
  const names = ['John', 'Doe', 'Jane'];

  for (final name in names) {
    print(name);
  }

  print('---------------------');

  for (final name in names.reversed) {
    print(name);
  }

  print('---------------------');

  if (names.contains('John')) {
    print('John is in the list');
  }

  print('---------------------');

  for (final name in names.where((String name) => name.startsWith('J'))) {
    print(name);
  }

  print('---------------------');

  // subscript operator
  print(names[0]);
  print(names[1]);
  print(names[2]);

  print('---------------------');

  names.sublist(1, 2).forEach((String name) => print(name));

  print('---------------------');
  names.sublist(0, 2).forEach((String name) => print(name));

  print('---------------------');
  names.sublist(1, 3).forEach((String name) => print(name));

  print('---------------------');

  const names1 = ['John', 'Doe', 'Jane'];
  const names2 = ['John', 'Doe', 'Jane'];

  if (names1 == names2) {
    print('Both lists are equal');
  }

  print('---------------------');

  names.map((e) => e.toUpperCase()).forEach(print);
  names.map((e) => e.length).forEach(print);

  print('---------------------');

  // if we want sum of all numbers in a list
  // wee would do it like this

  final numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int sum = 0;

  for (final number in numbers) {
    sum += number;
  }
  print(sum);

  print('---------------------');

  // we can do it in this way also

  final sum2 = numbers.fold(
    0,
    (
      previous, // 0
      thisElement, // numbers[0] = 1
    ) =>
        previous + thisElement, // 0 + 1 = 1

    // it will be called 10 times
  );
  print(sum2);

  print('---------------------');

  final totalLength = names.fold(
    0,
    (
      previous,
      thisElement,
    ) =>
        previous + thisElement.length,
  );
  print(totalLength);

  print('---------------------');

  final result = names.fold(
    '',
    (previousValue, element) => '$previousValue ${element.toUpperCase()}',
  );
  print(result);
}
