/// O(n^2)
List<int> selectionSort(List<int> nonSortedArray) {
  for (int i = 0; i < nonSortedArray.length - 1; i++) {
    int minIndex = i;
    for (int j = i + 1; j < nonSortedArray.length; j++) {
      if (nonSortedArray[j] < nonSortedArray[minIndex]) {
        minIndex = j;
      }
    }
    if (minIndex != i) {
      int tmp = nonSortedArray[minIndex];
      nonSortedArray[minIndex] = nonSortedArray[i];
      nonSortedArray[i] = tmp;
    }
  }
  return nonSortedArray;
}
