
main(){
  Reverse reverse = Reverse();
  print(reverse.reverse("reversedString"));
}

class Reverse {
  String reverse(String reversedString) {
    if (reversedString.isEmpty) {
      return reversedString;
    }

    var charStr = reversedString.split("");
    for (int i = 0, j = charStr.length - 1; i < j; i++, j--) {
      String temp = charStr[i];
      charStr[i] = charStr[j];
      charStr[j] = temp;
    }
    return charStr.join();
  }

  String justReverse(String str){
    return str.split("").reversed.join();
  }
}
