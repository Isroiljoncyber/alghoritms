
main(){

  Rotation rotation = Rotation();
  print(rotation.rotation("abcdef", 2));
  List<String> values = "abcdef".split("");
  rotation.rotation1(values, 2);
}

class Rotation {

  String rotation(String str, int n) {
    return str.substring(n) + str.substring(0, n);
  }

  rotation1(List<String> values, int n) {
    reverse(values, 0, n-1);
    reverse(values, n, values.length -1);
    reverse(values, 0, values.length -1);
  }

  reverse(List<String> values, int from, int to) {
    while (from<to){
      String temp = values[from];
      values[from] = values[to];
      values[to] = temp;
      from ++;
      to --;
    }
  }

}