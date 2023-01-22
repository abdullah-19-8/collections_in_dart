import 'package:collection/collection.dart';

void main(List<String> args) {
  final john = Person(name: 'John', friends: [
    Person(name: 'Jane'),
    Person(name: 'Doe'),
  ]);

  // if we want to add a friend to John then we get an error
  // because we can't modify the list
  try{
    john.friends!.add(Person(name: 'value'));
  } catch (e) {
    print(e);
  }
}

class Person {
  final String name;
  final List<Person>? _friends;

  UnmodifiableListView<Person>? get friends =>
      _friends == null ? null : UnmodifiableListView(_friends!);

  Person({required this.name, List<Person>? friends}) : _friends = friends;
}
