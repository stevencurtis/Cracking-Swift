# Palindrome Permutation

Difficulty: **Beginner** | Easy | Normal | Challenging<br/>

Given a string, write a function to check if it is a permutation of a palindrome. A palindrome is a word or phrase that is the same forwards and backwards. A permutation is a rearrangement of letters. The palindrome does not need to be limited to just dictionary words. You can ignore casing and non-letter characters.

```swift
Example
Input: Tact Coa
Output: True (permutations: "taco cat", "atco cta", etc.)
```

# Some Strings To Test
We need some strings that have an even number of letters, and some that are odd.

Here are some tests that I have created

```
"Tact Coa", true
"ABBA", true
"madam", true
"nurses run", true
"", true
" ", true
"a", true
```


# A Simple Answer
My first answer is not very sophisticated. It's not great. It's not that efficient.

```swift
func permutation(permutation: String) -> Bool {
    var candidate = permutation.lowercased()
    candidate.removeAll(where: { $0 == Character(" ") })
    var dictionary: [Character: Int] = [:]
    for character in candidate {
        dictionary[character, default: 0] += 1
    }
    if candidate.count % 2 == 0 {
        // even so we need an even count of each character
        return dictionary.values.allSatisfy{ $0 % 2 == 0 }
    } else {
        // odd so we need 1 count of each character
        if (dictionary.values.filter {
            $0 % 2 == 1
        }.count) == 1
        {
            return true
        } else {
            return false
        }
    }
}
```

# A Better Answer
Why don't we use `.isLetter`? 
```var candidate = permutation.lowercased().filter { $0.isLetter()```

That's quite obvious to me, but is not something that I thought of immediately.

I think I can also simplify the two paths through the algorithm. If we have one or zero oddNumberCharacters we have a palindrome. SO we can implement that into the algorithm. 

```swift
func permutation(permutation: String) -> Bool {
    var candidate = permutation.lowercased().filter{ $0.isLetter }
    var dictionary: [Character: Int] = [:]
    for character in candidate {
        dictionary[character, default: 0] += 1
    }
    let oddNumberCharacters = dictionary.values.filter {
        $0 % 2 == 1
    }
    if oddNumberCharacters.count == 1 || oddNumberCharacters.count == 0
    {
        return true
    } else {
        return false
    }
}
```

# A Simplified Answer

So why are we storing the characters in a dicationaryat all?
```swift

```

# Conclusion

If you've any questions, comments or suggestions please hit me up on [Twitter](https://twitter.com/stevenpcurtis) 
