import 'package:grokking_agorithms/algorithms/binary_search.dart';
import 'package:grokking_agorithms/algorithms/recursion.dart';
import 'package:grokking_agorithms/sorting/selection_sort.dart';
import 'package:test/test.dart';

void main() {
  test('binary search', () {
    expect(binarySearch([1, 2, 3, 4, 5], 2), 'Your num is found!');
    expect(binarySearch([1, 2, 3, 4, 5], 12), 'Your num is not found!');
  });
    test('selection sort', () {
    expect(selectionSort([4, 2, 8, 1, 5]), [1, 2, 4, 5, 8]);
  });

    test('selection sort', () {
    expect(Recursion().factorial(5), 120);
  });

  
}
