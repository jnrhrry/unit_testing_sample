import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing_sample/person.dart';

void main() {
  group("Mengecek Person Class", () {
    Person p;
    p = Person();
    test("initialize person object", () {
      expect(p.name, equals("no name"));
      expect(p.age, equals(0));
    });

    test("Age harus positif", () {
      p.age = -5;
      expect(p.age, isPositive);
    });

    test("Lucky number must be 3 positive numbers", () {
      expect(p.luckyNumbers,
          allOf([hasLength(equals(3)), isNot(anyElement(isNegative))]));
    });
  });

  setUp(() {
    print("set up");
  });

  tearDown(() {
    print("tear down");
  });
}
