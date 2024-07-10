class Recursion {
  int factorial(int n) {
    // Base case
    if (n <= 1) {
      return 1;
    }
    // Recursion case
    return n * factorial(n - 1);
  }
}
