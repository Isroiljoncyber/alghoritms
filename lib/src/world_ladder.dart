// import 'dart:collection';
// //////////////////////////////////////////////
// main() {
//   WordLadder ladder = WordLadder();
//   String beginWord = "hit";
//   String endWord = "cog";
//   List<String> words = ["hot", "dot", "dog", "lot", "log", "cog"];
//   print("Ladder langth ${ladder.ladderLength(beginWord, endWord, words)}");
// }
//
// class WordLadder {
//   int ladderLength(String beginWord, String endWord, List<String> wordList) {
//     HashSet<String> set = HashSet();
//     for (String word in wordList) {
//       set.add(word);
//     }
//
//     if (!set.contains(endWord)) {
//       return 0;
//     }
//     Queue<String> queue = ListQueue();
//     queue.add(beginWord);
//     int level = 1;
//     var chat_a = "a".codeUnits[0];
//     var chat_z = "z".codeUnits[0];
//
//     while (queue.isNotEmpty) {
//       int size = queue.length;
//       for (int i = 0; i < size; i++) {
//         String curr = queue.first;
//         queue.removeFirst();
//         List<String> wordsChars = curr.split("");
//         for (int j = 0; j < wordsChars.length; j++) {
//           String originalChars = wordsChars[j];
//           for (chat_a; chat_a <= chat_z; chat_a++) {
//             if (wordsChars[j] == String.fromCharCode(chat_a)) {
//               continue;
//             }
//             wordsChars[j] = String.fromCharCode(chat_a);
//             String newWord = wordsChars.join();
//
//             if (newWord == endWord) {
//               return level + 1;
//             }
//             if (set.contains(newWord)) {
//               set.remove(newWord);
//               queue.add(newWord);
//             }
//           }
//           wordsChars[j] = originalChars;
//         }
//       }
//       level++;
//     }
//     return 0;
//   }
// }
