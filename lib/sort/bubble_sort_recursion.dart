import 'dart:math';

import 'package:untitled/sort/sort_algorithm.dart';
import 'package:untitled/sort/sort_utils.dart';

main(){
  Random random = Random.secure();
  var integ = List.filled(10, 0);
  for(int i=0;i<integ.length;++i){
    integ[i] = random.nextInt(100)-50;
  }

  BubbleSortRecursion bubbleSortRecursion = BubbleSortRecursion();
  bubbleSortRecursion.sort<num>(integ);

  print(integ.toString());

}

class BubbleSortRecursion with SortUtils implements SortAlgorithm {

  @override
  List<T> sort<T extends Comparable<T>>(List<T> unsorted) {
      bubbleSort(unsorted, unsorted.length);
      return unsorted;
  }

  bubbleSort<T extends Comparable<T>>(List<T> unsorted, int len){
    bool swapped = false;
    for(int i =0; i<len-1;i++){
      if(greater(unsorted[i], unsorted[i+1])){
        swap(unsorted, i, i+1);
        swapped = true;
      }
    }
    if(swapped){
      bubbleSort(unsorted, len-1);
    }
  }

}