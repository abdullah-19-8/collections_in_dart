void main(List<String> args) {
  final iterable = Iterable.generate(20, (index) => getNames(index));
  // print(iterable); // (get names called) (Iterable<String>)

  // we can use for loop to iterate over the iterable
  for (var name in iterable.take(2)) {
    print(name);
  }

  // iterables are lazy and evaluated only when we need them
  // so if we don't use them then they won't be evaluated
  // that's the difference between iterables and lists
}

String getNames(int i) {
  print('get names called');
  return 'name $i';
}
