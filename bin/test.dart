import 'main.dart';
import 'package:test/test.dart';

void main() {
  test("test 1", () {
    expect(multiplicative(39), equals(3));
  });

  test("test2", () {
    expect(wave("edabit"), equals(["Edabit", "eDabit", "edAbit", "edaBit", "edabIt", "edabiT"]));
  });

  test("test3", () {
    expect(wave(" "), equals(["Edabit", "eDabit", "edAbit", "edaBit", "edabIt", "edabiT"]));
  });
}