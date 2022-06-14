import 'package:untitled/sort/sort_algorithm.dart';
import 'package:untitled/sort/sort_utils.dart';

main(){
  var bubbleSort= BubbleSort();
  var integers = [4, 23, 6, 78, 1, 54, 231, 9, 12];
  bubbleSort.sort<num>(integers);
  print(integers);
}

class BubbleSort with SortUtils implements SortAlgorithm {

  @override
  List<T> sort<T extends Comparable<T>>(List<T> array){
    var size =array.length;
    for(int i=1;i<size;++i){
      bool swapped = false;
      for(int j=0;j<size-i;++j){
        if(greater(array[j], array[j+1])){
          swap(array, j, j+1);
          swapped = true;
        }
      }
      if(!swapped) {
        break;
      }
    }
    return array;
  }

}