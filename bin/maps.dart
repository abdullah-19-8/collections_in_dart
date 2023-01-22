void main(List<String> args) {
  // this is a map
  // maps are like objects in JavaScript
  // maps have keys and values
  final info = {'name': 'John', 'age': 30};

  print(info);
  print(info['name']);
  print(info['age']);

  print('---------------------');

  print(info.keys);
  print(info.values);

  print('---------------------');

  info.putIfAbsent(
    'height',
    () => '175',
  ); // if the key doesn't exist then add it to the map
  print(info);

  print('---------------------');

  // if the key exists nothing will happen
  info.putIfAbsent(
    'height',
    () => '175',
  ); // this will do nothing
  print(info);

  print('---------------------');

  info['height'] = '180'; // this will override the value, and if the key doesn't exist then it will add it to the map
  print(info);

  print('---------------------');

  // we can check if the key exists in the map
  if (info.containsKey('height')) {
    print('height is ${info['height']}');
  } else {
    print('height doesn\'t exist in the map');
  }

  print('---------------------');

  // if we try to access a key that doesn't exist in the map then it will give us null
  print(info['weight']); // null

  print('---------------------');

  // map can have any type of keys and values
  final info2 = {1: 'John', 2: 30, 3: true};
  print(info2);

}
