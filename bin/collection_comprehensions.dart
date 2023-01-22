void main(List<String> args) {
  final string = 'aaaavgbbbccrre';
  var result = {
    for (final char in string.split('')) 'abc'.contains(char) ? null : char
  }
    ..removeAll([null])
    ..cast<String>();
  print(result);

  print('-----------------');

  final number = Iterable.generate(100);
  final evenNumbers = {
    for (final num in number)
      if (num % 2 == 0) num
  };
  print(evenNumbers);

  print('-----------------');

  final evenNumbersFunctional = number.where((num) => num % 2 == 0);
  print(evenNumbersFunctional);

  print('-----------------');

  final names = ['John', 'Doe', 'Jane'];

  final namesAndLengths = {
    for (final name in names) name: name.length
  };
  print(namesAndLengths);
}
