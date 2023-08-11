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
