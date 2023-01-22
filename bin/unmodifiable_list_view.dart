import 'dart:collection';

void main(List<String> args) {
  final names = ['John', 'Doe', 'Jane']; // list
  names.add('value');

  // if we want to have a list that can't be modified then we can use unmodifiable list

  try {
    final unmodifiableNames = UnmodifiableListView(names);
    unmodifiableNames.add('value'); // error
  } catch (e) {
    print(e);
  }
}
