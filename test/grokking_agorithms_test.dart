import 'package:grokking_agorithms/algorithms/binary_search.dart';
import 'package:test/test.dart';

void main() {
  test('binary search', () {
    expect(binarySearch([1, 2, 3, 4, 5], 2), 'Your num is found!');
    expect(binarySearch([1, 2, 3, 4, 5], 12), 'Your num is not found!');
  });
}
