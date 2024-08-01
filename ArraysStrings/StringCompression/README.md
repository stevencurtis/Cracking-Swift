# String Compression

Difficulty: **Beginner** | Easy | Normal | Challenging<br/>

Implement a method to perform basic string compression using the counts of repeated characters. For example, the string aabcccccaaa would become a2b1c5a3. If the "compressed" string would not become smaller than the original string, your method should return the original string. You can assume the string has only uppercase and lowercase letters (a-z)

# Some Tests

# A Simple Answer

```swift
class Solution {
    func compression(_ string: String) -> String {
        var solution = String()
        
        var i = 0
        while i < string.count {
            var j = i
            let firstChar = string[string.index(string.startIndex, offsetBy: i)]
            while j < string.count {
                if firstChar == string[string.index(string.startIndex, offsetBy: j)] {
                    j += 1
                } else {
                    break
                }
            }
            solution.append("\(firstChar)\(j - i)")
            if j > i {
                i = j
            } else {
                i += 1
            }
        }
        return solution.count < string.count ? solution : string
    }
}
```

# A Simple Answer, Improved
j will always be beyond i.
```swift
class Solution {
    func compression(_ string: String) -> String {
        var solution = String()
        
        var i = 0
        while i < string.count {
            var j = i
            let firstChar = string[string.index(string.startIndex, offsetBy: i)]
            while j < string.count {
                if firstChar == string[string.index(string.startIndex, offsetBy: j)] {
                    j += 1
                } else {
                    break
                }
            }
            solution.append("\(firstChar)\(j - i)")
            i = j
        }
        return solution.count < string.count ? solution : string
    }
}
```

# Wouldn't it be better to cast to array?
Yes, yes it would.

```swift
final class Solution {
    func compression(_ string: String) -> String {
        let str = Array(string)
        var i = 0
        var j = 0
        var result = ""
        while i < str.count {
            var count = 0
            let iLetter = str[i]
            while j < str.count && iLetter == str[j] {
                count += 1
                j += 1
            }
            result.append("\(str[i])\(count)")
            i = j
        }
        return result.count < string.count ? result : string
    }
}
```

# Conclusion

If you've any questions, comments or suggestions please hit me up on [Twitter](https://twitter.com/stevenpcurtis) 
