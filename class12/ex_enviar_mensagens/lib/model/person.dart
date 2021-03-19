class Person {
  String name;
  String lastname;
  int age;


  int calculateAgeInMonths(){
    return age * 12;
  }

  @override
  String toString() {
    return 'Person $name $lastname\nIdade $age\nIdade em meses: ${this.calculateAgeInMonths()} ';

  }

}