# Cracking the Coding Interview (Swift)

## Chapter 1 | Arrays and Strings
**Hash Tables**
Dictionaries are a type of hash table, and provide fast access to entries of data.

They are often used for high-performance computing applications like caches and databases as the lookup for dictionaries is constant.

[Here is a guide](https://stevenpcurtis.medium.com/dictionary-in-swift-52b14d6cfa93)

[and a more complex explanation](https://stevenpcurtis.medium.com/pass-the-swift-code-review-dictionary-edition-25191edb3ff6)

[Alternatively I like this article on implementing a dictionary](https://stevenpcurtis.medium.com/implement-a-dictionary-in-swift-5e06052aa120)

Apple have [documentation](https://developer.apple.com/documentation/swift/dictionary)

Lookups are typically performed in O(1) time, but it depends on the hashing algorithm used.

**ArrayList & Resizable Arrays**
In Swift Arrays are automatically resizable, and grow as you append items.

Since `Array` is dynamically resizable in Swift, we can think of the `Array` type as an ArrayList.

**StringBuilder**
Rather than using a StringBuilder class as in languages like Java, we can use the public API for Strings in Swift. This includes the `+=` operator and String interpolation.

A good StringBuilder class avoids creating new copies of a String for each concatenation that reduces to O(xn²).

[Swift's documentation](https://github.com/apple/swift/blob/main/stdlib/public/core/String.swift) helps us to justify avoiding making such a class. 

```swift
When a string's contiguous storage fills up, a new buffer must be allocated
/// and data must be moved to the new storage. String buffers use an
/// exponential growth strategy that makes appending to a string a constant
/// time operation when averaged over many append operations.
```

**Interview Questions**<br>
1.1 Is Unique<br>
1.2 Check Permutation<br>
1.3 [URLify](https://github.com/stevencurtis/Cracking-Swift/tree/main/ArraysStrings/URLify)<br>
1.4 Palindrome Permutation
1.5 One Away
Extras
Matrix: https://github.com/stevencurtis/Cracking-Swift/tree/main/ArraysStrings/Matrix
Useful:
Two Sum https://github.com/stevencurtis/SwiftCoding/tree/master/LeetCode/TwoSum

## Chapter 2 | Linked Lists
**Creating a Linked List**
[Swift Code](https://stevenpcurtis.medium.com/linked-lists-and-ll-algorithms-in-swift-8f8788834fce)

**Deleting a Node from a SingleLinkedList**
[Swift Code](https://stevenpcurtis.medium.com/linked-lists-and-ll-algorithms-in-swift-8f8788834fce)
**The *Runner* Technique**
**Recursive Problems**

## Chapter 3 | Stacks and Queues
**Implementing a Stack**
[Swift Code](https://betterprogramming.pub/generics-in-swift-aa111f1c549)
**Implementing a Queue**

## Chapter 4 | Trees and Graphs
**Types of Trees**
**Binary Tree Traversal**
**Binary Heaps (Min-Heaps and Max-Heaps)**
**Tries (Prefix Trees)**
**Graphs**
**Graph Search**

[BFS](https://betterprogramming.pub/swift-using-bfs-for-leetcode-problems-82696faf58d8)<br>
[DFS](https://github.com/stevencurtis/SwiftCoding/tree/master/LeetCode/SwiftUsingDFSforLeetCodeProblems)<br>
[Tries](https://github.com/stevencurtis/SwiftCoding/tree/master/Theory/Trie)<br>
[Heap](https://medium.com/swift-coding/heaps-in-swift-4bf1091dcdd9)<br>

# Concepts and Algorithms
## Chapter 5 | Bit Manipulation
**Bit Manipulation By Hand**
**Bit Facts and Tricks**
**Two's Complement and Negative Numbers**
**Arithmetic vs. Logical Right Shift**
**Common Bit Tasks: Getting and Setting**

[Bit byte and nibble](https://medium.com/swlh/swift-bit-byte-and-nibble-6d34fbf2ee78)

## Chapter 6 | Math and LogicPuzzles
**Prime Numbers**
**Probability**
**Start talking**
**Develop Rules and Patterns**
**Worst Case Shifting**
**Algorithm Approaches**

## Chapter 7 | Object-Oriented Design
**How to Approach**
**Design Patterns**

## Chapter 8 | Recursion and Dynamic Programming
**How to Approach**
**Recursive vs. Iterative Solutions**
**Dynamic Programming & Memoization**

## Chapter 9 | System Design and Scalability
**Handling the Questions**
**Design: Step-By-Step**
**Algorithms that Scale: Step-by-Step**
**Key Concepts**
**Considerations**
**There is no "perfect" system**
**Example Problem**

## Chapter 10 | Sorting and Searching
**Common Sorting Algorithms**
**Searching Algorithms**

[Stable sorts](https://stevenpcurtis.medium.com/stable-sorts-75296ec1ce92)

## Chapter 11 | Testing
**What the Interviewer is looking for**
**Testing a Real World Object**
**Testing a Piece of Software**
**Testing a Function**
**Troubleshooting Questions**
