///Creates object of a class on the basis of different parameters.
///To Make creation of an object more readable and maintainable.
///Avoid using constructors with long list of parameters.
///Better readability with chained calls.
 
class BuilderPattern {

  int? age;
  String? name;

  BuilderPattern setAge(int age) {
    this.age = age;
    return this;
  }

  BuilderPattern setName(String name) {
    this.name = name;
    return this;
  }

  @override
  String toString() {
    return "Name: $name, Age: $age";
  }

}

void main() {
  BuilderPattern builderPattern = BuilderPattern()
              .setAge(20)
              .setName("IRONMAN");

  print(builderPattern.toString());
}
