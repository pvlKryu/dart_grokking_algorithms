List<int> quickSort(List<int> list) {
  if (list.length <= 1) return list;

  void _swap(int i, int j) {
    int temp = list[i];
    list[i] = list[j];
    list[j] = temp;
  }

  int _partition(int left, int right) {
    int pivot = list[right];
    int i = left - 1;

    for (int j = left; j < right; j++) {
      if (list[j] <= pivot) {
        i++;
        _swap(i, j);
      }
    }
    _swap(i + 1, right);
    return i + 1;
  }

  void _quickSort(int left, int right) {
    if (left < right) {
      int pivotIndex = _partition(left, right);
      _quickSort(left, pivotIndex - 1);
      _quickSort(pivotIndex + 1, right);
    }
  }

  _quickSort(0, list.length - 1);
  return list;
}
