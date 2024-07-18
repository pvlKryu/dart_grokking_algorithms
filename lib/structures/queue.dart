class Queue<T> {
  final List<T> _list = [];

  // Enqueue: Add an element to the end of the queue
  void enqueue(T element) {
    _list.add(element);
  }

  // Dequeue: Remove and return the first element from the queue
  T dequeue() {
    if (_list.isEmpty) {
      throw Exception('Queue is empty');
    }
    return _list.removeAt(0);
  }

  // Peek: Get the first element without removing it
  T peek() {
    if (_list.isEmpty) {
      throw Exception('Queue is empty');
    }
    return _list.first;
  }

  // Check if the queue is empty
  bool isEmpty() {
    return _list.isEmpty;
  }

  // Get the size of the queue
  int size() {
    return _list.length;
  }

  @override
  String toString() {
    return _list.toString();
  }
}

void main() {
  Queue<int> queue = Queue<int>();

  // Enqueue elements
  queue.enqueue(10);
  queue.enqueue(20);
  queue.enqueue(30);

  print('Initial Queue: $queue'); // Output: Initial Queue: [10, 20, 30]

  // Dequeue elements
  int firstElement = queue.dequeue();
  print('Dequeued Element: $firstElement'); // Output: Dequeued Element: 10
  print('Queue after dequeue: $queue'); // Output: Queue after dequeue: [20, 30]

  // Peek at the first element
  int peekElement = queue.peek();
  print('Peek Element: $peekElement'); // Output: Peek Element: 20

  // Check if the queue is empty
  bool isEmpty = queue.isEmpty();
  print('Is Queue Empty? $isEmpty'); // Output: Is Queue Empty? false

  // Get the size of the queue
  int size = queue.size();
  print('Queue Size: $size'); // Output: Queue Size: 2
}
