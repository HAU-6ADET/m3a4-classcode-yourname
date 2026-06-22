// Module 3 – Activity 4 – Person (Encapsulation with getters & setters)
//
// Build a `Person` whose data is kept in PRIVATE fields and reached only
// through getters and setters that have friendly public names.
//
// Required public API (the tests rely on these exact names):
//
//   Person()                 - a plain constructor (no arguments)
//   person.myFName           - get/set the first name (String)
//   person.myLName           - get/set the last name  (String)
//   person.myAge             - get/set the age         (int)
//   person.myAddress         - get/set the address     (String)
//   person.fullName          - getter: first name + ' ' + last name
//   person.describe()        - returns this exact sentence:
//        "<fullName>, is <age> years of age and currently lives at <address>"
//     e.g. "Juan Dela Cruz, is 20 years of age and currently lives at Angeles"
//
// In main(), create a Person, read the first name, last name, age and address
// from the user (assign them through the setters), then print describe().
//
// Concepts to research (see the Module 3 OOP cheat sheet:
// content/cheat-sheets/dart-m3-oop.md): private (`_`) fields, getters and
// setters (which may have their own names), and string interpolation.
//
// The skeleton compiles. Add the private fields and wire each getter/setter to
// them; do not rename the public members.

class Person {
  // TODO: declare PRIVATE fields for first name, last name, age and address.

  String get myFName => ''; // TODO
  set myFName(String value) {} // TODO

  String get myLName => ''; // TODO
  set myLName(String value) {} // TODO

  int get myAge => 0; // TODO
  set myAge(int value) {} // TODO

  String get myAddress => ''; // TODO
  set myAddress(String value) {} // TODO

  String get fullName => ''; // TODO: first name + ' ' + last name

  String describe() => ''; // TODO: the sentence shown above
}

void main() {
  // TODO: create a Person, read first name / last name / age / address from the
  // user (set them through the setters), then print describe().
}
