# One Away

Difficulty: **Beginner** | Easy | Normal | Challenging<br/>

# The question
There are three types of edits that can be performed on strings: insert a character, remove a character, or replace a character. Given two strings, write a function to check if they are one edit (or zero edits) away.

# My First Attempt
I though it would make sense to think about the different cases.

I felt that either the two strings were of equal length and then we could just compare the two.

If they are of different length we compare each element of the first and second string. But what if we've added or removed an element? I thought I'd think of that later.

```swift
class Solution {
    func test(stringOne: String, stringTwo: String) -> Bool {
        
        if stringOne.count == stringTwo.count {
            var errorFound = false
            for i in 0..<stringOne.count {
                if stringOne[stringOne.index(stringOne.startIndex, offsetBy: i)] != stringTwo[stringTwo.index(stringTwo.startIndex, offsetBy: i)] {
                    if errorFound {
                        return false
                    } else {
                        errorFound = true
                    }
                }
            }
        } else {
            // second
        }
        return true
    }
}
```

Then it occurred to me. What was I doing? I can do this in one pass

# Use a Dictionary

```swift
class Solution {
    func test(stringOne: String, stringTwo: String) -> Bool {
        guard abs(stringOne.count - stringTwo.count) <= 1 else { return false }
        var dictionary: [Character: Int] = [:]
        
        for i in 0..<stringOne.count {
            dictionary[stringOne[stringOne.index(stringOne.startIndex, offsetBy: i)], default: 0] += 1
        }
        for j in 0..<stringTwo.count {
            dictionary[stringTwo[stringTwo.index(stringTwo.startIndex, offsetBy: j)], default: 0] -= 1
        }
        
        if (abs(dictionary.values.reduce(0, { abs($0) + abs($1) }))) <= 2 {
            return true
        } else {
            return false
        }
    }
}
```

# Use a Two-Pointer Solution

```swift

```
