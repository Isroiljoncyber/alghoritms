import 'dart:math';
import 'dart:io';

main(){
  print('Enter the string:');
  LongerPalindromicSubstring substring = LongerPalindromicSubstring();
  var str = stdin.readLineSync();
  stdout.write("The longest string is ${substring.longestPolindrome(str)}");
}

class LongerPalindromicSubstring {
  String longestPolindrome(String? str) {
    if (str == null || str.isEmpty) {
      return "";
    }
    int length = str.length;
    String maxStr = "";
    for (int i = 0; i < length; ++i) {
      for (int j = i; j < length; ++j) {
        if (isValid(str, i, j) == true) {
          if (j - i + 1 > maxStr.length) {
            maxStr = str.substring(i, j + 1);
          }
        }
      }
    }
    return maxStr;
  }

  bool isValid(String str, int lo, int hi) {
    int n = hi - lo + 1;
    for (int i = 0; i < n / 2; ++i) {
      if (str[lo + i] != str[hi - i]) {
        return false;
      }
    }
    return true;
  }
}
