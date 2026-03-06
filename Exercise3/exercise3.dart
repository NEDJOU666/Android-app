class Person {
  final String name;
  final int age;

  Person(this.name, this.age);

  @override
  String toString() => "${name}(${age})";
}

void main() {
  
  List<Person> people = [
    Person("Alice", 25),
    Person("Bob", 30),
    Person("Charlie", 35),
    Person("Anna", 22),
    Person("Ben", 28),
  ];

  print("All people:");
  people.forEach((p) => print("  ${p.name} - age ${p.age}"));
  print("");

  List<Person> filtered = people
      .where((p) => p.name.startsWith("A") || p.name.startsWith("B"))
      .toList();

  print("Filtered people (A or B):");
  print("  $filtered");
  print("");

  List<int> ages = filtered.map((p) => p.age).toList();
  print("Their ages: $ages");
  print("");

   double average = ages.reduce((a, b) => a + b) / ages.length;

  print("Average age: ${average.toStringAsFixed(1)}");
}
