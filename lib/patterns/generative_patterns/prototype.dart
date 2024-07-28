/// Purpose: To create new objects by copying existing objects (prototypes).
abstract class Prototype {
  Prototype clone();
}

class ConcretePrototype implements Prototype {
  final String name;

  ConcretePrototype(this.name);

  @override
  Prototype clone() => ConcretePrototype(name);

  void showName() => print('Prototype name: $name');
}

void main() {
  ConcretePrototype p1 = ConcretePrototype('Prototype1');
  ConcretePrototype p2 = p1.clone() as ConcretePrototype;

  p1.showName(); // Prototype name: Prototype1
  p2.showName(); // Prototype name: Prototype1
}
