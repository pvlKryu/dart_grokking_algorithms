import 'package:grokking_agorithms/algorithms/binary_search.dart';
import 'package:grokking_agorithms/algorithms/recursion.dart';
import 'package:grokking_agorithms/sorting/bubble_sort.dart';
import 'package:grokking_agorithms/sorting/comb_sort.dart';
import 'package:grokking_agorithms/sorting/merge_sort.dart';
import 'package:grokking_agorithms/sorting/quick_sort.dart';
import 'package:grokking_agorithms/sorting/selection_sort.dart';
import 'package:grokking_agorithms/sorting/tree_sort.dart';
import 'package:test/test.dart';

void main() {
  test('binary search', () {
    expect(binarySearch([1, 2, 3, 4, 5], 2), 'Your num is found!');
    expect(binarySearch([1, 2, 3, 4, 5], 12), 'Your num is not found!');
  });
  test('selection sort', () {
    expect(selectionSort([4, 2, 8, 1, 5]), [1, 2, 4, 5, 8]);
  });

  test('recursion', () {
    expect(Recursion().factorial(5), 120);
  });

  test('quick sort', () {
    expect(quickSort([4, 2, 8, 1, 5]), [1, 2, 4, 5, 8]);
  });

  test('merge sort', () {
    expect(mergeSort([4, 2, 8, 1, 5]), [1, 2, 4, 5, 8]);
  });

  test('bubble sort', () {
    expect(bubbleSort([4, 2, 8, 1, 5]), [1, 2, 4, 5, 8]);
  });

  group('HashMap Tests', () {
    test('Test HashMap operations', () {
      // Create a hash table
      Map<String, int> hashMap = {};

      // Add elements to the hash table
      hashMap['apple'] = 1;
      hashMap['banana'] = 2;
      hashMap['orange'] = 3;

      // Check the added elements
      expect(hashMap['apple'], equals(1));
      expect(hashMap['banana'], equals(2));
      expect(hashMap['orange'], equals(3));

      // Remove an element from the hash table
      hashMap.remove('banana');

      // Check the removal of the element
      expect(hashMap.containsKey('banana'), isFalse);

      // Check the presence of the key
      bool hasBanana = hashMap.containsKey('banana');
      expect(hasBanana, isFalse);

      // Iterate over the elements of the hash table and check the values
      hashMap.forEach((key, value) {
        if (key == 'apple') {
          expect(value, equals(1));
        } else if (key == 'orange') {
          expect(value, equals(3));
        }
      });
    });
  });

  test('tree sort', () {
    expect(treeSort([4, 2, 8, 1, 5]), [1, 2, 4, 5, 8]);
  });

  test('comb sort', () {
    expect(combSort([4, 2, 8, 1, 5]), [1, 2, 4, 5, 8]);
  });
}
