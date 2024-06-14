abstract class Component {
  String operation();
}

class ConcreteComponent implements Component {
  @override
  String operation() {
    return 'ConcreteComponent';
  }
}

class Decorator implements Component {
  final Component _component;

  Decorator(this._component);

  @override
  String operation() {
    return 'Decorator(${_component.operation()})';
  }
}

void main() {
  final component = ConcreteComponent();
  final decorator = Decorator(component);

  print(component.operation()); // ConcreteComponent
  print(decorator.operation()); // Decorator(ConcreteComponent)
}
