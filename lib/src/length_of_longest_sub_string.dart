import 'dart:collection';

main() {
  LengthOfLongestSubstring substring = LengthOfLongestSubstring();
  print(substring.lengthOfLongest("adedsdwert"));
}

class LengthOfLongestSubstring {
  int lengthOfLongest(String s) {
    int max = 0;
    int start = 0;
    int i = 0;
    HashMap<String, int> map = HashMap();

    while (i < s.length) {
      String temp = s[i];

      if (!map.containsKey(temp)) {
        map.putIfAbsent(temp, () => 0);
      }
      else if (s[start] == temp) {
        start++;
      }
      else if (s[i - 1] == temp) {
        if (max < map.length) max = map.length;
        map = HashMap();
        start = i;
        i--;
      }
      else {
        if (max < map.length) max = map.length;
        while (s[start] != temp) {
          map.remove(s[start]);
          start++;
        }
        start++;
      }
      i++;
    }
    if (max < map.length) max = map.length;
    return max;
  }
}
