class Node {
  final String value;
  final List<Node> children;

  Node(this.value) : children = [];

  void addChild(Node child) {
    children.add(child);
  }

  void printTree([int depth = 0]) {
    print('${' ' * depth}$value');
    for (var child in children) {
      child.printTree(depth + 2);
    }
  }
}

void main() {
  // Create nodes
  Node root = Node('Root');
  Node child1 = Node('Child 1');
  Node child2 = Node('Child 2');
  Node child3 = Node('Child 3');
  Node grandchild1 = Node('Grandchild 1');
  Node grandchild2 = Node('Grandchild 2');

  // Create tree
  root.addChild(child1);
  root.addChild(child2);
  root.addChild(child3);
  child1.addChild(grandchild1);
  child2.addChild(grandchild2);

  // Print tree
  root.printTree();
}
