import 'dart:math';

main() {
  List<String> string = ["ABS", "ABS123", "abcABC", "abc123ABC"];
  for (var element in string) {
    Upper upper = Upper();
    print(upper.toUpperCase(element));
  }
}

class Upper {
  String toUpperCase(String s) {
    List<String> values = s.split("");
    for (int i = 0; i < values.length; ++i) {
      if (isLetter(values[i]) && isLowerCase(values[i])) {
        values[i] = values[i].toUpperCase();
      }
    }
    return values.toString();
  }

  bool isLetter(String letter) {
    if (letter.contains(RegExp(r"[a-z]")) || letter.contains(RegExp(r"[A-Z]"))) {
      return true;
    }
    return false;
  }

  bool isLowerCase(String letter) {
    if (letter.contains(RegExp(r"[a-z]"))) {
      return true;
    }
    return false;
  }
}
