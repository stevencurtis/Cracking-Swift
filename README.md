# Cracking the Coding Interview (Swift)

## Setting up Xcode and tests 
[Here is how I use Xcode and tests](https://github.com/stevencurtis/Cracking-Swift/tree/main/Setup/README.md)

## Swift basics
[Strings](https://github.com/stevencurtis/Cracking-Swift/tree/main/Basics/Strings/README.md)<br>
[Reduce](https://github.com/stevencurtis/Cracking-Swift/tree/main/Basics/Reduce/README.md)<br>
**Dictionaries**<br>
[Dictionaries 1](https://github.com/stevencurtis/Cracking-Swift/tree/main/Basics/Dictionaries/README.md)<br>

## Chapter 1 | Arrays and Strings
**Hash Tables**<br>
Dictionaries are a type of hash table, and provide fast access to entries of data.
Lookups are typically performed in O(1) time, but it depends on the hashing algorithm used.<br>
[Dictionaries 1](https://stevenpcurtis.medium.com/dictionary-in-swift-52b14d6cfa93)<br>
[Dictionaries 2](https://stevenpcurtis.medium.com/pass-the-swift-code-review-dictionary-edition-25191edb3ff6)<br>
[Implementing a dictionary](https://stevenpcurtis.medium.com/implement-a-dictionary-in-swift-5e06052aa120)<br>
[Dictionary documentation](https://developer.apple.com/documentation/swift/dictionary)<br>

**ArrayList & Resizable Arrays**<br>
In Swift Arrays are automatically resizable, and grow as you append items.

Since `Array` is dynamically resizable in Swift, we can think of the `Array` type as an ArrayList.

**StringBuilder**<br>
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
1.1 [Is Unique](https://github.com/stevencurtis/Cracking-Swift/tree/main/ArraysStrings/IsUnique)<br>
1.2 [Check Permutation](https://github.com/stevencurtis/Cracking-Swift/tree/main/ArraysStrings/CheckPermutation)<br>
1.3 [URLify](https://github.com/stevencurtis/Cracking-Swift/tree/main/ArraysStrings/URLify)<br>
1.4 Palindrome Permutation<br>
1.5 One Away<br>
Extras
Matrix: https://github.com/stevencurtis/Cracking-Swift/tree/main/ArraysStrings/Matrix <br>
Useful:
Two Sum https://github.com/stevencurtis/SwiftCoding/tree/master/LeetCode/TwoSum <br>

## Chapter 2 | Linked Lists
**Creating a Linked List**<br>
[Swift Code](https://stevenpcurtis.medium.com/linked-lists-and-ll-algorithms-in-swift-8f8788834fce)<br>

**Deleting a Node from a SingleLinkedList**<br>
[Swift Code](https://stevenpcurtis.medium.com/linked-lists-and-ll-algorithms-in-swift-8f8788834fce)<br>
**The *Runner* Technique**<br>
**Recursive Problems**<br>

## Chapter 3 | Stacks and Queues
**Implementing a Stack**<br>
[Swift Code](https://betterprogramming.pub/generics-in-swift-aa111f1c549)<br>
**Implementing a Queue**<br>

## Chapter 4 | Trees and Graphs
**Types of Trees**<br>
**Binary Tree Traversal**<br>
**Binary Heaps (Min-Heaps and Max-Heaps)**<br>
**Tries (Prefix Trees)**<br>
**Graphs**<br>
**Graph Search**<br>

[BFS](https://betterprogramming.pub/swift-using-bfs-for-leetcode-problems-82696faf58d8)<br>
[DFS](https://github.com/stevencurtis/SwiftCoding/tree/master/LeetCode/SwiftUsingDFSforLeetCodeProblems)<br>
[Tries](https://github.com/stevencurtis/SwiftCoding/tree/master/Theory/Trie)<br>
[Heap](https://medium.com/swift-coding/heaps-in-swift-4bf1091dcdd9)<br>

# Concepts and Algorithms
## Chapter 5 | Bit Manipulation
**Bit Manipulation By Hand**<br>
**Bit Facts and Tricks**<br>
**Two's Complement and Negative Numbers**<br>
**Arithmetic vs. Logical Right Shift**<br>
**Common Bit Tasks: Getting and Setting**<br>

[Bit byte and nibble](https://medium.com/swlh/swift-bit-byte-and-nibble-6d34fbf2ee78)<br>

## Chapter 6 | Math and LogicPuzzles
**Prime Numbers**<br>
**Probability**<br>
**Start talking**<br>
**Develop Rules and Patterns**<br>
**Worst Case Shifting**<br>
**Algorithm Approaches**<br>

## Chapter 7 | Object-Oriented Design
**How to Approach**<br>
**Design Patterns**<br>

## Chapter 8 | Recursion and Dynamic Programming
**How to Approach**<br>
**Recursive vs. Iterative Solutions**<br>
**Dynamic Programming & Memoization**<br>

## Chapter 9 | System Design and Scalability
**Handling the Questions**<br>
**Design: Step-By-Step**<br>
**Algorithms that Scale: Step-by-Step**<br>
**Key Concepts**<br>
**Considerations**<br>
**There is no "perfect" system**<br>
**Example Problem**<br>

## Chapter 10 | Sorting and Searching
**Common Sorting Algorithms**<br>
**Searching Algorithms**<br>

[Stable sorts](https://stevenpcurtis.medium.com/stable-sorts-75296ec1ce92)<br>

## Chapter 11 | Testing
**What the Interviewer is looking for**<br>
**Testing a Real World Object**<br>
**Testing a Piece of Software**<br>
**Testing a Function**<br>
**Troubleshooting Questions**<br>
