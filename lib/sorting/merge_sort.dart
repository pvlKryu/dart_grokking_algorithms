// O(nlog(n))
List<int> mergeSort(List<int> array) {
  if (array.length <= 1) {
    return array;
  }

  int middle = array.length ~/ 2;
  List<int> left = array.sublist(0, middle);
  List<int> right = array.sublist(middle);

  mergeSort(left);
  mergeSort(right);

  merge(array, left, right);
  print(array);
  return array;
}

void merge(List<int> array, List<int> left, List<int> right) {
  int leftIndex = 0;
  int rightIndex = 0;
  int arrayIndex = 0;

  while (leftIndex < left.length && rightIndex < right.length) {
    if (left[leftIndex] <= right[rightIndex]) {
      array[arrayIndex] = left[leftIndex];
      leftIndex++;
    } else {
      array[arrayIndex] = right[rightIndex];
      rightIndex++;
    }
    arrayIndex++;
  }

  while (leftIndex < left.length) {
    array[arrayIndex] = left[leftIndex];
    leftIndex++;
    arrayIndex++;
  }

  while (rightIndex < right.length) {
    array[arrayIndex] = right[rightIndex];
    rightIndex++;
    arrayIndex++;
  }
}
