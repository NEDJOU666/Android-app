# Exercise 1: Higher-Order Functions & Predicates

**📊 Difficulty Level**: Intermediate | **⏱️ Estimated Time**: 30-45 minutes

## 📌 Overview

This exercise demonstrates **higher-order functions** and **predicates** (filter functions) in both Dart and Kotlin. The program showcases how to use functional programming patterns to filter collections based on custom rules. You'll learn how to write reusable, flexible code by passing functions as parameters—a cornerstone of functional programming.

## 🎯 Learning Objectives

- Understand higher-order functions (functions that accept other functions as parameters)
- Apply predicate functions for filtering collections
- Compare functional programming syntax between Dart and Kotlin
- Practice lambda expressions and arrow functions

---

## 🎯 Quick Start

**Don't have time to read everything?** Follow these steps:

1. **Open** [exercise1.dart](exercise1.dart) or Exercise1.kt
2. **Understand** the `processList()` function signature
3. **Write** lambda predicates: `(n) => n % 2 == 0` (Dart) or `{ it % 2 == 0 }` (Kotlin)
4. **Test** by following the "How to Run" section
5. **Compare** your output with expected results below

---

## 📂 Files

| File | Language | Purpose |
|------|----------|---------|
| `exercise1.dart` | Dart | Higher-order function implementation |
| `Exercise1.kt` | Kotlin | Higher-order function implementation |

---

## 🔍 What the Code Does

### The Problem
Filter a list of integers `[1, 2, 3, 4, 5, 6]` using different rules:
- Get even numbers
- Get numbers greater than 3
- Get odd numbers
- Get numbers less than 4

### The Solution
Both languages implement a `processList()` function that:
1. Takes a list of integers as input
2. Takes a **predicate** (a function that returns true/false)
3. Applies the predicate to each element
4. Returns only elements where the predicate returns `true`

```
[1, 2, 3, 4, 5, 6] 
         ↓
   predicate: n % 2 == 0
         ↓
    [2, 4, 6]
```

---

## 📊 Code Comparison

### Dart Implementation
```dart
List<int> processList(
  List<int> numbers,
  bool Function(int) predicate
) {
  List<int> result = [];
  for (int number in numbers) {
    if (predicate(number)) {
      result.add(number);
    }
  }
  return result;
}

// Usage
List<int> even = processList(nums, (n) => n % 2 == 0);
```

### Kotlin Implementation
```kotlin
fun processList(
    numbers: List<Int>,
    predicate: (Int) -> Boolean
): List<Int> {
    val result = mutableListOf<Int>()
    for (number in numbers) {
        if (predicate(number)) {
            result.add(number)
        }
    }
    return result
}

// Usage
val even = processList(nums) { it % 2 == 0 }
```

---

## ▶️ How to Run

### Dart
```bash
cd Exercise1
dart exercise1.dart
```

**Output**:
```
Even numbers:   [2, 4, 6]
Greater than 3: [4, 5, 6]
Odd numbers:    [1, 3, 5]
Less than 4:    [1, 2, 3]
```

### Kotlin
```bash
cd Exercise1
kotlinc Exercise1.kt -include-runtime -d exercise1.jar
java -jar exercise1.jar
```

**Output**:
```
Even numbers:   [2, 4, 6]
Greater than 3: [4, 5, 6]
Odd numbers:    [1, 3, 5]
Less than 4:    [1, 2, 3]
```

---

## 🔑 Key Concepts Explained

### 1. **Higher-Order Functions** 🎯
A function that takes another function as a parameter **or** returns a function as a result.

**Real-world analogy**: A recipe that takes "ingredient preparation method" as a parameter:
- You don't change the recipe for chopping vs. slicing; you pass different methods.
- Similarly, `processList()` doesn't change; you pass different predicates.

**Example in Exercise 1**: `processList()` is a higher-order function because it accepts a predicate function as a parameter.

### 2. **Predicates** ✓
A function that returns a **boolean value** (true/false) based on a condition. Used to test if something meets a criterion.

**Examples**:
- `(n) => n % 2 == 0` → true if n is even, false otherwise
- `(n) => n > 3` → true if n is greater than 3
- `(word) => word.length > 5` → true if word is longer than 5 characters

### 3. **Lambda Expressions** ⚡
Anonymous (unnamed) functions written in shorthand notation. They're often one-liners.

- **Dart syntax**: `(parameter) => expression`
  - `(n) => n % 2 == 0` means: take n, return whether n is even
  - `(name) => name.startsWith('A')` means: take name, check if it starts with 'A'

- **Kotlin syntax**: `{ parameter -> expression }` or use implicit `it`
  - `{ it % 2 == 0 }` (implicit it parameter)
  - `{ n -> n % 2 == 0 }` (explicit parameter)

### 4. **Functional vs Imperative Programming**

Both implementations in this exercise use the **imperative approach** (explicit loops).

**Comparison**:
| Approach | Style | Example |
|----------|-------|---------|
| **Imperative** | Manual loops & conditions | `for (n in nums) { if (predicate(n)) result.add(n) }` |
| **Functional** | Built-in higher-order methods | `nums.where(predicate).toList()` (Dart) or `nums.filter(predicate)` (Kotlin) |

**Modern Dart/Kotlin prefer functional** because it's more concise, less error-prone, and easier to read.

---

## ⚠️ Common Mistakes

1. **Forgetting the return type in the predicate**
   ```dart
   ❌ Wrong:  processList(nums, (n) n % 2 == 0)  // Missing =>
   ✅ Right:  processList(nums, (n) => n % 2 == 0)
   ```

2. **Confusing predicate parameter names**
   ```dart
   ❌ Confusing: processList(nums, (x) => x % 2 == 0)  // What is x?
   ✅ Clear:     processList(nums, (n) => n % 2 == 0)  // Clearly a number
   ```

3. **Modifying the original list instead of creating a new one**
   ```dart
   ❌ Wrong:  result = numbers;  // Just references the original
   ✅ Right:  List<int> result = [];  // Create new list
          for (int number in numbers) { ... }
   ```

4. **Forgetting to return the result**
   ```dart
   ❌ Wrong:  void processList(...) { ... }  // Returns nothing!
   ✅ Right:  List<int> processList(...) { ... return result; }
   ```

5. **Logic error in predicate**
   ```dart
   ❌ Wrong:  (n) => n % 2 == 1  // This is ODD, not even!
   ✅ Right:  (n) => n % 2 == 0  // This is EVEN
   ```

---

---

## 🏆 Completion Checklist

Use this checklist to verify you've completed the exercise:

- [ ] Understand what a **higher-order function** is
- [ ] Know the difference between **predicates** and regular functions
- [ ] Can write **lambda expressions** in Dart with correct syntax
- [ ] Can write **lambda expressions** in Kotlin with correct syntax
- [ ] Successfully run `exercise1.dart` and see all 4 filter results
- [ ] Successfully run `Exercise1.kt` and see matching output
- [ ] Explain in your own words why `processList()` is "higher-order"
- [ ] Can predict the output before running the code
- [ ] Attempted at least one bonus challenge (optional)

---

## 🚀 Bonus Challenges

Push yourself further with these advanced tasks:

### Challenge 1: Filter Objects (Not Just Numbers)
Modify `processList()` to work with custom objects:
```dart
class Student {
  String name;
  int score;
  Student(this.name, this.score);
}

// Filter students who scored above 80
List<Student> topStudents = processList(
  students,
  (s) => s.score > 80
);
```

### Challenge 2: Multiple Predicates
Use multiple predicates in sequence:
```dart
// Filter: (even) AND (greater than 2)
List<int> results = processList(nums, (n) => n % 2 == 0 && n > 2);
```

### Challenge 3: Create Your Own Higher-Order Function
```dart
// Takes a list and a function that transforms elements
List<int> doubleList(List<int> nums, int Function(int) transform) {
  List<int> result = [];
  for (int n in nums) {
    result.add(transform(n));
  }
  return result;
}

// Usage:
List<int> doubled = doubleList(nums, (n) => n * 2);
```

### Challenge 4: Combine with Dart's Built-In Methods
Rewrite the filtering using Dart's functional approach:
```dart
// Instead of processList(nums, (n) => n % 2 == 0)
List<int> even = nums.where((n) => n % 2 == 0).toList();
```

---

## 💡 Why This Matters in Real Code

### 1. **Reusability**: Write once, use forever
```dart
// One function, infinite use cases
List<String> longWords = processList(words, (w) => w.length > 5);
List<int> evens = processList(nums, (n) => n % 2 == 0);
List<User> admins = processList(users, (u) => u.isAdmin);
```

### 2. **Separation of Concerns**
- `processList()` handles the **mechanism** (how to filter)
- Predicates define the **logic** (what to filter)
- Change the predicate without touching `processList()`

### 3. **Cleaner, More Readable Code**
Compare:
```dart
// ❌ Without higher-order functions (repetitive)
List<int> evens = [];
for (int n in nums) {
  if (n % 2 == 0) evens.add(n);
}

List<int> greaterThan3 = [];
for (int n in nums) {
  if (n > 3) greaterThan3.add(n);
}

// ✅ With higher-order functions (DRY - Don't Repeat Yourself)
List<int> evens = processList(nums, (n) => n % 2 == 0);
List<int> greaterThan3 = processList(nums, (n) => n > 3);
```

### 4. **Foundation for Advanced Patterns**
- Understanding this is essential for learning:
  - `map()`: Transform each element
  - `reduce()`: Combine all elements
  - `fold()`: Like reduce but with an initial value
  - `forEach()`: Apply function to each element

---

## 📖 Further Learning

### 📚 Related Topics in This Series
- [Exercise 2](#) - Map & Transform Operations
- [Exercise 3](../Exercise3/README.md) - Filtering Objects & Computing Aggregates

### 🌐 External Resources
- [Dart Higher-Order Functions](https://dart.dev/guides/language/effective-dart)
- [Kotlin Lambdas](https://kotlinlang.org/docs/lambdas.html)
- [Functional Programming Fundamentals](https://www.coursera.org/learn/functional-programming-scala)

---
