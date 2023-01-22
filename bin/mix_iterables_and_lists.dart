void main(List<String> args) {
  const names = ['John', 'Doe', 'Jane']; // list
  final upperCase = names.map((name) {
    print('map called');
    return name.toUpperCase();
  });

  for (final name in upperCase.take(2)){
    print(name);
  }
}
