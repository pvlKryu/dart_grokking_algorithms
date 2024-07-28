/// Purpose: Define an interface for creating an object, 
/// but allow subclasses to change the type of object being created.
abstract class Product {
  void operation();
}

class ConcreteProductA implements Product {
  @override
  void operation() => print('Product A operation');
}

class ConcreteProductB implements Product {
  @override
  void operation() => print('Product B operation');
}

abstract class Creator {
  Product factoryMethod();

  void someOperation() {
    Product product = factoryMethod();
    product.operation();
  }
}

class ConcreteCreatorA extends Creator {
  @override
  Product factoryMethod() => ConcreteProductA();
}

class ConcreteCreatorB extends Creator {
  @override
  Product factoryMethod() => ConcreteProductB();
}

void main() {
  Creator creator = ConcreteCreatorA();
  creator.someOperation(); // Product A operation

  creator = ConcreteCreatorB();
  creator.someOperation(); // Product B operation
}
