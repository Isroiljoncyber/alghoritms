import 'dart:math';

main() {
  Palindrome palind = Palindrome();
  List<String?> palindromes = [null, "", "aba", "123321"];
  for (var element in palindromes) {
    print(palind.isPalindrome1(element) &&
        palind.isPalindromeRecursion(element) &&
        palind.isPalindrome(element));
  }

  List<String?> notPalindromes = ["abb", "abc", "abc123"];
  for (var element in notPalindromes) {
    print(!palind.isPalindrome1(element) &&
        !palind.isPalindromeRecursion(element) &&
        !palind.isPalindrome(element));
  }
}

class Palindrome {
  bool isPalindrome(String? s) {
    if (s == null || s.length <= 1) return true;
    for (int i = 0, j = s.length - 1; i < j; ++i, --j) {
      if (s[i] != s[j]) {
        return false;
      }
    }
    return true;
  }

  bool isPalindrome1(String? s) {
    return (s == null || s.length <= 1) ||
        (s == s.split("").reversed.join());
  }

  bool isPalindromeRecursion(String? s) {
    if (s == null || s.length <= 1) {
      return true;
    }
    if (s[0] != s[s.length - 1]) {
      return false;
    }
    return isPalindrome1(s.substring(1, s.length - 1));
  }

}
