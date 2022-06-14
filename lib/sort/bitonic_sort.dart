main() {
  List<int> a = [8,6,2,4,5,3,1,7,9,5,6,9,2];
  int up = 1;
  BitonicSort sort = BitonicSort();
  sort.sort(a, a.length, up);
  sort.printArray(a);
}

class BitonicSort {

  void compAndSwap(List<int> a, int i, int j, int dir) {
    if ((a[i] > a[j] && dir == 1) || (a[i] < a[j] && dir == 0)) {
      int temp = a[i];
      a[i] = a[j];
      a[j] = temp;
    }
  }

  void bitonicMerge(List<int> a, int low, int cnt, int dir) {
    if (cnt > 1) {
      int k = cnt~/2 ;
      for (int i = low; i < low + k; i++) {
        compAndSwap(a, i, i + k, dir);
      }
      bitonicMerge(a, low, k, dir);
      bitonicMerge(a, low + k, k, dir);
    }
  }

  void bitonicSort(List<int> a, int low, int cnt, int dir) {
    if (cnt > 1) {
      int k = (cnt ~/ 2);
      bitonicSort(a, low, k, 1);
      bitonicSort(a, low + k, k, 0);
      bitonicMerge(a, low, cnt, dir);
    }
  }

  sort(List<int> a, int n, int up) {
    bitonicSort(a, 0, n, up);
  }

  void printArray(List<int> arr) {
    int n = arr.length;
    for (int i = 0; i < n; ++i) {
      print("${arr[i]}");
    }
  }
}
