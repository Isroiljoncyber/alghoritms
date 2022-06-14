import 'package:untitled/sort/sort_algorithm.dart';
import 'package:untitled/sort/sort_utils.dart';

main() {
  CircleSort sort = CircleSort();

  List<int> arr = [4, 23, 6, 78, 1, 54, 231, 9, 12];
  sort.sort<num>(arr);
  print(arr);

  List<String> stringArray = ["c", "a", "e", "b", "d"];
  sort.sort(stringArray);
  print(stringArray);

}

class CircleSort with SortUtils implements SortAlgorithm {
  @override
  List<T> sort<T extends Comparable<T>>(List<T> array) {
    int n = array.length;
    while (doSort(array, 0, n - 1));
    return array;
  }

  bool doSort<T extends Comparable<T>>(List<T> array, int left, int right) {
    bool swapped = false;

    if (left == right) {
      return false;
    }

    int low = left;
    int high = right;

    while (low < high) {
      if (array[low].compareTo(array[high]) > 0) {
        swap(array, low, high);
        swapped = true;
      }
      low++;
      high--;
    }

    if (low == high && array[low].compareTo(array[high + 1]) > 0) {
      swap(array, low, high + 1);
      swapped = true;
    }

    int mid = left + (right - left) ~/ 2;
    bool leftHalf = doSort(array, left, mid);
    bool rightHalf = doSort(array, mid + 1, right);

    return swapped || leftHalf || rightHalf;
  }
}
