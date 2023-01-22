import 'dart:collection';

void main(List<String> args) {
  // out normal list is not safe because it will crash if we try to access an index that doesn't exist
  // final names = ['John', 'Doe', 'Jane'];
  // print(names[3]); // error
  // or, if we try to access first and last element of an empty list then it will crash
  // final names = [];
  // print(names.first); // error
  // print(names.last); // error

  // so we can use safe list

  // final List names = ['John', 'Doe', 'Jane'];
  // print(names[5]);
  // this will crash because we are using a normal list

  // so we can use safe list
  final names = SafeList<String>(
    defaultValue: 'default',
    absentValue: 'absent',
    values: ['John', 'Doe', 'Jane'],
  );
  print(names[5]); // absent
  names.length = 0;
  print(names.first); // absent
  print(names.last); // absent
}

class SafeList<T> extends ListBase {
  final List<T> _list;
  final T absentValue;
  final T defaultValue;

  SafeList({
    required this.defaultValue,
    required this.absentValue,
    List<T>? values,
  }) : _list = values ?? [];

  @override
  operator [](int index) => index < length ? _list[index] : absentValue;

  @override
  void operator []=(int index, value) => _list[index] = value;

  @override
  int get length => _list.length;

  @override
  set length(int newLength) {
    if (newLength < length) {
      _list.length = newLength;
    } else {
      _list.addAll(
        List.filled(
          newLength - length,
          defaultValue,
        ),
      );
    }
  }

  @override
  T get first => _list.isNotEmpty ? _list.first : absentValue;

  @override
  T get last => _list.isNotEmpty ? _list.last : absentValue;
}
