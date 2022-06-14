import 'dart:math';

class BucketSort{

  bucketSort(List<int> arr){
    int maximum = max(arr);

    int minimum = min(arr);

    int numberOfBuckets = maximum - minimum +1;

    List<List<int>>? buckets = [];

    for (int i = 0; i < numberOfBuckets; ++i) {
      List<int> list = [];
      buckets.add(list);
    }

    for (var item in arr) {
      int hashs = hash(item, minimum, numberOfBuckets);
      buckets[hashs].add(item);
    }

    for (List<int> buket in buckets) {
      buket.sort();
    }

    int index = 0;

    for (List<int> bucket in buckets) {
      for (int value in bucket) {
        arr[index++] = value;
      }
    }
  }

  int max(List<int> arr) {
    int max = arr[0];

    for (var item in arr) {
      if (item > max) {
        max = item;
      }
    }
    return max;
  }

  int min(List<int> arr) {
    int min = arr[0];

    for (var item in arr) {
      if (item < min) {
        min = item;
      }
    }
    return min;
  }

  int hash(int elem, int min, int numberOfBucket) {
    return (elem - min) ~/ numberOfBucket;
  }
}

void main(List<String> args) {
  List<int> arr = List.filled(10, 0);

  Random random = Random.secure();

  for (int i = 0; i < arr.length - 1; ++i) {
    arr[i] = random.nextInt(100) - 50;
  }

  BucketSort().bucketSort(arr);
  print(arr);
}