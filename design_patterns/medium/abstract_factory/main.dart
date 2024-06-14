abstract class Button {
  void paint();
}

class WindowsButton implements Button {
  @override
  void paint() {
    print('Windows button painted');
  }
}

class MacButton implements Button {
  @override
  void paint() {
    print('Mac button painted');
  }
}

abstract class ButtonFactory {
  Button createButton();
}

class WindowsFactory implements ButtonFactory {
  @override
  Button createButton() {
    return WindowsButton();
  }
}

class MacFactory implements ButtonFactory {
  @override
  Button createButton() {
    return MacButton();
  }
}
