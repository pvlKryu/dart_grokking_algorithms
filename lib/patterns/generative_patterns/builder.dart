/// Purpose: To separate the construction of a complex object from its representation 
/// so that the same construction process can produce different representations.
class Product {
  String partA = '';
  String partB = '';
  String partC = '';

  void show() {
    print('Product: $partA, $partB, $partC');
  }
}

abstract class Builder {
  void buildPartA();
  void buildPartB();
  void buildPartC();
  Product getResult();
}

class ConcreteBuilder implements Builder {
  final Product _product = Product();

  @override
  void buildPartA() => _product.partA = 'Part A';

  @override
  void buildPartB() => _product.partB = 'Part B';

  @override
  void buildPartC() => _product.partC = 'Part C';

  @override
  Product getResult() => _product;
}

class Director {
  Builder _builder;

  Director(this._builder);

  void construct() {
    _builder.buildPartA();
    _builder.buildPartB();
    _builder.buildPartC();
  }
}

void main() {
  Builder builder = ConcreteBuilder();
  Director director = Director(builder);
  director.construct();
  Product product = builder.getResult();
  product.show(); // Product: Part A, Part B, Part C
}
