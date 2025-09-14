# Discrete Mathematics Structures Lab Manual Code

This file contains code examples extracted and organized from the lab manual provided in the file "DISCRETE MATHEMATICS STRUCTURES-lab manual.pdf". The code examples have been formatted in a consistent and readable manner.

---

## Exercise 1: Propositional Logic Evaluator

This example demonstrates a skeleton for evaluating logical expressions. It can be extended to include parsing and evaluation logic.

```python
# Propositional Logic Evaluator

def evaluate_proposition(expr):
    # TODO: Implement a parser and evaluator for logical expressions
    # This is a placeholder implementation
    return eval(expr, {'__builtins__': None}, {})

if __name__ == "__main__":
    # Example expression (for illustration only)
    expression = 'True and (False or True)'
    result = evaluate_proposition(expression)
    print(f"The result of '{{expression}}' is {{result}}")
```

---

## Exercise 2: Set Operations Implementation

This code demonstrates basic set operations such as union and intersection.

```python
def union(set1, set2):
    return set1 | set2

def intersection(set1, set2):
    return set1 & set2

if __name__ == "__main__":
    A = {1, 2, 3}
    B = {2, 3, 4}
    print("Union:", union(A, B))
    print("Intersection:", intersection(A, B))
```

---

## Exercise 3: Graph Traversal using BFS

A simple implementation of Breadth-First Search (BFS) on a graph.

```python
from collections import deque

def bfs(graph, start):
    visited = set()
    queue = deque([start])
    while queue:
        vertex = queue.popleft()
        if vertex not in visited:
            print(vertex)
            visited.add(vertex)
            queue.extend(set(graph.get(vertex, [])) - visited)

if __name__ == "__main__":
    graph = {
        'A': ['B', 'C'],
        'B': ['A', 'D', 'E'],
        'C': ['A', 'F'],
        'D': ['B'],
        'E': ['B', 'F'],
        'F': ['C', 'E']
    }
    print("BFS starting from vertex A:")
    bfs(graph, 'A')
```

---

## Exercise 4: Recurrence Relation - Fibonacci Example

This code provides a simple recursive solution for the Fibonacci sequence, which is a common recurrence relation.

```python
def fibonacci(n):
    if n <= 1:
        return n
    return fibonacci(n-1) + fibonacci(n-2)

if __name__ == "__main__":
    for i in range(10):
        print(f"Fibonacci({i}) = {fibonacci(i)}")
```

---

*Note: The code examples provided here are meant to serve as starting points. Additional error-handling, input validation, and optimizations may be needed based on specific requirements described in the lab manual.*
