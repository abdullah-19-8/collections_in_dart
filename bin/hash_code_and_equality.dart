void main(List<String> args) {
  final person1 = Person(name: 'John', age: 30);
  final person2 = Person(name: 'John', age: 30);


  print(person1.hashCode); 
  print(person2.hashCode); 

  // sets don't know that person1 and person2 are different
  // because they have the different hashCodes
  // so sets will not consider them as the same object
  // if we add hashCode method to the Person class then it will work

  final persons = {person1, person2};
  print(persons); // {Person: John, 30, Person: John, 30}

  print('---------------------');

  final person = Person(name: 'John', age: 30);
  final dog = Dog(name: 'John', age: 30);

  // they have the same hashCodes
  // but they are not equal
  // because they are not the same type
  // so sets will consider them as the different objects

  print(person.hashCode); 
  print(dog.hashCode); 

  final beings = {person, dog, person1};
  print(beings); // it will display {Person: John, 30, Dog: John, 30} because person1 and person are the same object.
  


}

class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});

  @override
  String toString() => 'Person: $name, $age';

  @override
  int get hashCode => Object.hash(name, age);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Person && other.name == name && other.age == age;
  }
}

class Dog {
  final String name;
  final int age;

  Dog({required this.name, required this.age});

  @override
  String toString() => 'Dog: $name, $age';

  @override
  int get hashCode => Object.hash(name, age);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Dog && other.name == name && other.age == age;
  }
}
