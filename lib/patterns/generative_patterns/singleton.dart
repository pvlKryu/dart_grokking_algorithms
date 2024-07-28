/// Purpose: To ensure that a class has only one instance 
/// and to provide a global point of access to it.
class Singleton {
  Singleton._privateConstructor();

  static final Singleton _instance = Singleton._privateConstructor();

  factory Singleton() {
    return _instance;
  }

  void someMethod() {
    print('This is a singleton method');
  }
}

void main() {
  var s1 = Singleton();
  var s2 = Singleton();

  print(identical(s1, s2)); // true
  s1.someMethod(); // This is a singleton method
}
