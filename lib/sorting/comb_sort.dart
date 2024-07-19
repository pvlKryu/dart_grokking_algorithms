// worst - O(n^2), best - O(nlog(n))
List<int> combSort(List<int> arr) {
  int gap = arr.length;
  bool swapped = true;
  double shrinkFactor = 1.3;

  while (gap > 1 || swapped) {
    if (gap > 1) {
      gap = (gap / shrinkFactor).floor();
    }

    int i = 0;
    swapped = false;

    while (i + gap < arr.length) {
      if (arr[i] > arr[i + gap]) {
        int temp = arr[i];
        arr[i] = arr[i + gap];
        arr[i + gap] = temp;
        swapped = true;
      }
      i++;
    }
  }
  return arr;
}

void main() {
  List<int> arr = [8, 4, 1, 56, 3, -44, 23, -6, 28, 0];
  print('Original array: $arr');
  combSort(arr);
  print('Sorted array: $arr');
}
