class User {
  static const String PassionTea = 'tea';
  static const String PassionCoffee = 'coffee';

  String firstName = '';
  String lastName = '';
  Map passions = {
    PassionTea: false,
    PassionCoffee: false
  };
  bool newsletter = false;

  save() {
    print('saved');
  }
}