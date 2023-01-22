void main(List<String> args) {
  for (final name in getNames()) {
    print(name);
  }
}

Iterable<String> getNames() sync* {
  print('producing bob');
  yield 'bob';
  print('producing alice');
  yield 'alice';
  print('producing john');
  yield 'john';
  print('Producing template names');
  yield* templateNames();
}

Iterable<String> templateNames() sync* {
  print('producing bob');
  yield 'alice';
  print('producing alice');
  yield 'bob';
  print('producing john');
  yield 'doe';
}
