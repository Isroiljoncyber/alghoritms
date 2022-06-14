
main(){
  Pangram pangram = Pangram();
  print(pangram.isPangram("The quick brown fox jumps over the lazy dog"));
}

class Pangram {

  bool isPangram(String s){
    List<bool?> marked = List.filled(26, false);
    var values = s.split("");
    for(var value in values){
      if(isLetter(value)){
        int index = isUpperCase(value) ? value.codeUnits[0]-"A".codeUnits[0]: value.codeUnits[0]-"a".codeUnits[0];
        marked[index] = true;
      }
    }
    for(bool? b in marked){
      if(!b!){
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

  bool isUpperCase(String letter) {
    if (letter.contains(RegExp(r"[A-Z]"))) {
      return true;
    }
    return false;
  }

}