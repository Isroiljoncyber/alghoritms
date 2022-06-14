import 'package:untitled/sort/sort_algorithm.dart';
import 'package:untitled/sort/sort_utils.dart';

main(){
  List<int> integers = [4, 23, 6, 78, 1, 54, 231, 9, 12];
  CocktailShakerSort shakerSort = CocktailShakerSort();

  // Output => 1 4 6 9 12 23 54 78 231
  print(shakerSort.sort<num>(integers));

  // String Input
  List<String> strings = ["c", "a", "e", "b", "d"];
  print(shakerSort.sort(strings));
}

class CocktailShakerSort with SortUtils implements SortAlgorithm{

  @override
  List<T> sort<T extends Comparable<T>>(List<T> array) {
    int length = array.length;
    int left= 0;
    int right = length - 1;
    int swappedLeft, swappedRight;
    while(left<right){
      swappedRight = 0;
      for(int i=left; i<right; i++){
        if(less(array[i+1], array[i])){
          swap(array, i, i+1);
          swappedRight = i;
        }
      }
      right = swappedRight;
      swappedLeft = length-1;
      for(int j=right; j>left; j--){
        if(less(array[j], array[j-1])){
          swap(array, j-1, j);
          swappedRight = j;
        }
      }
      left = swappedLeft;
    }
    return array;
  }

}