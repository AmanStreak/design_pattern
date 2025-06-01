/// Creates single object of a class
class SingletonPattern {

  SingletonPattern._(); //Private Consturctor
  static SingletonPattern? _instance;

  static get instance {
    _instance ??= SingletonPattern._();
    return _instance;
  }

}