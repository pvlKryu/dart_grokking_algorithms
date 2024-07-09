/// O(logN)
String binarySearch(List<int> sortedArray, int findingNum) {
  int lowIndex = 0;
  int highIndex = sortedArray.length;
  while (lowIndex < highIndex) {
    int midNum = sortedArray[(lowIndex + highIndex) ~/ 2];
    if (midNum == findingNum) {
      print('Your num is found!');
      return 'Your num is found!';
    } else if (midNum > findingNum) {
      highIndex -= 1;
    } else {
      lowIndex += 1;
    }
  }
  print('Your num is not found!');
  return 'Your num is not found!';
}
