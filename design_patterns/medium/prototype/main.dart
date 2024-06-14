class Prototype {
  String name;

  Prototype(this.name);

  Prototype.fromPrototype(Prototype prototype) : name = prototype.name;

  void printName() {
    print(name);
  }
}

void main() {
  final prototype = Prototype('Original');
  final clonedPrototype = Prototype.fromPrototype(prototype);

  prototype.printName();
  clonedPrototype.printName();
}
