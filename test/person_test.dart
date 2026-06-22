import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';

import '../bin/person.dart';

void main() {
  test('student.json is filled in', () {
    final info = jsonDecode(File('student.json').readAsStringSync())
        as Map<String, dynamic>;
    for (final field in [
      'classCode',
      'fullName',
      'studentNumber',
      'studentEmail',
      'personalEmail',
      'githubAccount',
    ]) {
      expect(info[field], isNotEmpty, reason: 'Set "$field" in student.json');
    }
  });

  group('Person', () {
    Person sample() => Person()
      ..myFName = 'Juan'
      ..myLName = 'Dela Cruz'
      ..myAge = 20
      ..myAddress = 'Angeles';

    test('setters store values and getters read them back', () {
      final p = sample();
      expect(p.myFName, 'Juan');
      expect(p.myLName, 'Dela Cruz');
      expect(p.myAge, 20);
      expect(p.myAddress, 'Angeles');
    });

    test('fullName combines the first and last name', () {
      expect(sample().fullName, 'Juan Dela Cruz');
    });

    test('describe() formats the full sentence', () {
      expect(
        sample().describe(),
        'Juan Dela Cruz, is 20 years of age and currently lives at Angeles',
      );
    });
  });
}
