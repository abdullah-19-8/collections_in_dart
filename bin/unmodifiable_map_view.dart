import 'package:collection/collection.dart';

void main(List<String> args) {
  final info = {
    'name': 'John',
    'age': 30,
    'address': {
      'street': '123 Main St',
      'city': 'New York',
      'state': 'NY',
      'zip': '12345'
    }
  };

  try {
    final info2 = UnmodifiableMapView(info);
    info2.addAll({'name': 'Jane'}); // error
  } catch (e) {
    print(e);
  }
}
