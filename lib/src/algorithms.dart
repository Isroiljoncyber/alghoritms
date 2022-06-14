import 'dart:collection';

class Algorithms {
  // ============================================ //
  String? zigZagEncodePattern(String str, int numRows) {
    if (numRows < 2 || str.length < numRows) return str;
    var start = 0;
    var height = 1;
    var depth = numRows;
    List<String> zigZagArray = [];
    while (depth != 0) {
      var pointer = start;
      var heightSpace = 2 + (height - 2) * 2;
      var depthSpace = 2 + (depth - 2) * 2;
      var bool = true;
      while (pointer < str.length) {
        zigZagArray.add(str[pointer]);
        if (heightSpace == 0) {
          pointer += depthSpace;
        } else if (depthSpace == 0) {
          pointer += heightSpace;
        } else if (bool) {
          pointer += depthSpace;
          bool = false;
        } else {
          pointer += heightSpace;
          bool = true;
        }
      }
      height++;
      depth--;
      start++;
    }
    return zigZagArray.toString();
  }

  // ========================================== //
  bool isAlphabetical(String str) {
    String lowStr = str.toLowerCase();
    for (int i = 0; i < lowStr.length - 1; i++) {
      if (!isLetter(lowStr[i]) ||
          !(lowStr.codeUnitAt(i) <= lowStr.codeUnitAt(i + 1))) {
        return false;
      }
    }
    return true;
  }

  bool isLetter(String letter) {
    if (letter.contains(RegExp(r"[a-z]"))) {
      return true;
    }
    return false;
  }

  //=================================//
  bool approach1(String str1, String str2) {
    if (str1.length != str2.length) {
      return false;
    }
    List<String> sort1 = str1.split("");
    List<String> sort2 = str2.split("");

    sort1.sort((a, b) => a.compareTo(b));
    sort2.sort((a, b) => a.compareTo(b));

    if (sort1.toString() == sort2.toString()) {
      return true;
    }
    return false;
  }

  bool approach2(String str1, String str2) {
    if (str1.length != str2.length) {
      return false;
    }
    var m = List.filled(26, 0);
    var n = List.filled(26, 0);
    for (var c in str1.codeUnits) {
      m[c - "a".codeUnits[0]]++;
    }
    for (var c in str1.codeUnits) {
      n[c - "a".codeUnits[0]]++;
    }
    for (int i = 0; i < 25; i++) {
      if (m[i] != n[i]) {
        return false;
      }
    }
    return true;
  }

  bool approach3(String str1, String str2) {
    if (str1.length != str2.length) {
      return false;
    }
    var m = List.filled(26, 0);
    var n = List.filled(26, 0);
    for (int i = 0; i < str1.length; i++) {
      m[str1.codeUnitAt(i) - "a".codeUnits[0]]++;
      n[str2.codeUnitAt(i) - "a".codeUnits[0]]++;
    }
    for (int i = 0; i < 25; i++) {
      if (m[i] != n[i]) {
        return false;
      }
    }
    return true;
  }

  bool approach4(String str1, String str2) {
    if (str1.length != str2.length) {
      return false;
    }
    Map<String, int> nm = {};
    Map<String, int> kk = {};
    for (var c in str1.split("")) {
      nm[c] = nm[c] ?? 0 + 1;
    }
    for (var c in str2.split("")) {
      kk[c] = kk[c] ?? 0 + 1;
    }
    for (var c in nm.keys) {
      if (nm[c] != kk[c]) {
        return false;
      }
    }
    return true;
  }

  // ============================================= //
  bool isAllCharactersSame(String str) {
    for (int i = 1; i < str.length; i++) {
      if (str[0] == str[i]) {
        return false;
      }
    }
    return true;
  }

  // ============================================= //
  bool isAnagrams(String str1, String str2) {
    str1 = str1.toLowerCase();
    str2 = str2.toLowerCase();
    Map<String, int> charAppearance = {};

    for (int i = 0; i < str1.length; i++) {
      int numOfAppearance = charAppearance[str1[i]] ?? 0;
      charAppearance[str1[i]] = numOfAppearance + 1;
    }

    for (int i = 0; i < str2.length; i++) {
      if (!charAppearance.containsKey(str2[i])) {
        return false;
      }
      charAppearance[str2[i]] = charAppearance[str2[i]]! - 1;
    }

    for (int cnt in charAppearance.values) {
      if (cnt != 0) {
        return false;
      }
    }
    return true;
  }

  // ============================================= //
  int countVowel(String? str) {
    Set<String> vowels = {"a", "e", "i", "o", "u"};
    int cnt = 0;
    if (str == null) {
      return 0;
    }
    for (var c in str.toLowerCase().split("")) {
      if (vowels.contains(c)) {
        ++cnt;
      }
    }
    return cnt;
  }

  // ============================================= //


}
