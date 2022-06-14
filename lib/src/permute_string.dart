main() {
  String str = "ABC";
  int len = str.length;
  print("All the permutations of the string are:");
  PermuteString string = PermuteString();
  string.generatePermutation(str, 0, len);
}

class PermuteString {
  String swapString(String swappedString, int first, int second) {
    var charList = swappedString.split("");
    String extraSwap = "";
    extraSwap = charList[first];
    charList[first] = charList[second];
    charList[second] = extraSwap;
    return charList.join();
  }

  generatePermutation(String str, int start, int end) {
    if (start == end - 1) {
      print(str);
    } else {
      for (int i = start; i < end; i++) {
        str = swapString(str, start, i);
        generatePermutation(str, start + 1, end);
        str = swapString(str, start, i);
      }
    }
  }
}
