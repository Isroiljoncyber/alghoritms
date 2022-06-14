import 'dart:math';

main() {
  List<String> string = ["ABS", "ABS123", "abcABC", "abc123ABC"];
  for (var element in string) {
    Lower lower = Lower();
    print(lower.toLowerCase(element));
  }
}

class Lower {
  String toLowerCase(String s) {
    List<String> values = s.split("");
    for (int i = 0; i < values.length; ++i) {
      if (isLetter(values[i]) && isUpperCase(values[i])) {
        values[i] = values[i].toLowerCase();
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

  bool isUpperCase(String letter) {
    if (letter.contains(RegExp(r"[A-Z]"))) {
      return true;
    }
    return false;
  }
}
