/// O(n^2)
List<int> bubbleSort(List<int> nums) {
  int n = nums.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (nums[j] > nums[j + 1]) {
        int tmp = nums[j];
        nums[j] = nums[j + 1];
        nums[j + 1] = tmp;
      }
    }
  }
  return nums;
}
