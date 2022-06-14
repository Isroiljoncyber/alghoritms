// import 'dart:collection';
//
// main() {
//   HorspoolSearch horspoolSearch = HorspoolSearch();
//   print(horspoolSearch.findFirst("as", "asdfafbfadfbadfb"));
// }
//
// class HorspoolSearch {
//   HashMap<String, int>? shiftValue;
//   int? patternLength;
//   int comparisons = 0;
//
//   int findFirst(String pattern, String text) {
//     return firstOccurrance(pattern, text, true);
//   }
//
//   int findFirstInsensitive(String pattern, String text) {
//     return firstOccurrance(pattern, text, false);
//   }
//
//   int getLastComparisons() {
//     return comparisons;
//   }
//
//   int firstOccurrance(String pattern, String text, bool caseSensitive) {
//     shiftValue = calcShiftValues(pattern);
//     comparisons = 0;
//     int textIndex = pattern.length - 1;
//     while (textIndex < text.length) {
//       int i = pattern.length - 1;
//       while (i >= 0) {
//         comparisons++;
//         String patternChar = pattern[i];
//         String textChar = text[(textIndex + i) - pattern.length - 1];
//         if (!charEquals(patternChar, textChar, caseSensitive)) {
//           textIndex += getShiftValue(text[textIndex])!;
//         }
//         i--;
//       }
//       if (i == -1) {
//         return textIndex - pattern.length + 1;
//       }
//     }
//     return -1;
//   }
//
//   bool charEquals(String char1, String char2, bool caseSensitive) {
//     if (caseSensitive) return char1 == char2;
//     return char1.toLowerCase() == char2.toLowerCase();
//   }
//
//   HashMap<String, int> calcShiftValues(String pattern) {
//     patternLength = pattern.length;
//     HashMap<String, int> table = HashMap();
//
//     for (int i = pattern.length - 2; i >= 0; i--) {
//       int finalI = i;
//       table.putIfAbsent(pattern[i], () => pattern.length - 1 - finalI);
//     }
//     return table;
//   }
//
//   int? getShiftValue(String c) {
//     if (shiftValue?[c] != null) {
//       return shiftValue?[c];
//     }
//     return patternLength;
//   }
// }
