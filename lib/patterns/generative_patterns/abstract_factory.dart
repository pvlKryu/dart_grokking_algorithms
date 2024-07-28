/// Purpose: To provide an interface for creating families of related or dependent objects 
/// without specifying their specific classes.
library;

abstract class Button {
  void click();
}

class WindowsButton implements Button {
  @override
  void click() => print('Windows Button clicked');
}

class MacOSButton implements Button {
  @override
  void click() => print('MacOS Button clicked');
}

abstract class Checkbox {
  void check();
}

class WindowsCheckbox implements Checkbox {
  @override
  void check() => print('Windows Checkbox checked');
}

class MacOSCheckbox implements Checkbox {
  @override
  void check() => print('MacOS Checkbox checked');
}

abstract class GUIFactory {
  Button createButton();
  Checkbox createCheckbox();
}

class WindowsFactory implements GUIFactory {
  @override
  Button createButton() => WindowsButton();

  @override
  Checkbox createCheckbox() => WindowsCheckbox();
}

class MacOSFactory implements GUIFactory {
  @override
  Button createButton() => MacOSButton();

  @override
  Checkbox createCheckbox() => MacOSCheckbox();
}

void main() {
  GUIFactory factory = WindowsFactory();
  Button button = factory.createButton();
  Checkbox checkbox = factory.createCheckbox();
  button.click(); // Windows Button clicked
  checkbox.check(); // Windows Checkbox checked

  factory = MacOSFactory();
  button = factory.createButton();
  checkbox = factory.createCheckbox();
  button.click(); // MacOS Button clicked
  checkbox.check(); // MacOS Checkbox checked
}
