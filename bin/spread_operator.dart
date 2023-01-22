void main(List<String> args) {
  addToArrayWrong();
  print('-----------------');
  addToArrayRight();
  print('-----------------');
  addToDictionaryWrong();
  print('-----------------');
  addToDictionaryRight();
}

void addToArrayWrong() {
  final names1 = ['John', 'Doe', 'Jane']; // list
  final names2 = ['John', 'Doe', 'Jane']; // list
  final allNamesWrong = names1;
  allNamesWrong.addAll(names2);
  print(names1);
  print(names2);
  print(allNamesWrong);
}

void addToArrayRight() {
  final names1 = ['John', 'Doe', 'Jane']; // list
  final names2 = ['John', 'Doe', 'Jane']; // list
  final allNamesRight = [...names1, ...names2];

  print(names1);
  print(names2);
  print(allNamesRight);

  final anotherWay = [...names1]..addAll(names2);
  print(anotherWay);
}

void addToDictionaryWrong() {
  const info = {
    'name': 'John',
    'age': 30,
    'address': {
      'street': '123 Main St',
      'city': 'New York',
      'state': 'NY',
      'zip': '12345'
    }
  };
  try{
    final info2 = info;
    info2.addAll({'name': 'Jane'});
  } catch (e) {
    print(e);
  }
}

void addToDictionaryRight() {
  const info = {
    'name': 'John',
    'age': 30,
    'address': {
      'street': '123 Main St',
      'city': 'New York',
      'state': 'NY',
      'zip': '12345'
    }
  };

  final info2 = {...info, 'name': 'Jane'};
  print(info2);
}
