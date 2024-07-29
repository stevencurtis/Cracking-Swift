# Strings

## Lowercased
Change uppercase to lowercase
`let lowercased = string.lowercased()`

## Uppercase
Change lowercase to uppercase
`let candidate = string.uppercase()`

## Remove non-letter characters
**Remove whitespace**
`let lowercased = string.lowercased()`

**Use isLetter**
This removes everything that is not considered to be a letter.
`let letters = string.filter { $0.isLetter }`

## Reversal
`let reversedString = String(string.reversed())`

## Trimming Whitespaces
`let trimmingString = " Trim me ".trimmingCharacters(in: .whitespaces)`

## Replace occurrences
`let replacedString = string.replacingOccurrences(of: "playground", with: "world")`

## Convert to ASCII code
**asciiValue**
If we cast it, we will generate a value of type `UInt8?` which is not ideal, we need to deal with the optional. Unnecessary casting and creating `Character` instances is not efficient in terms of memory and performance.
 
`let code = Character("a").asciiValue`

It is better to use `.first` and use if let syntax to unwrap optionals.

```swift
if let firstCharacter = "a".first, let asciiValue = firstCharacter.asciiValue {
    print("ASCII value: \(asciiValue)")
} else {
    print("No ASCII value found.")
}
```

**UnicodeScalar**
We can initialise a `UnicodeScalar` with a`UInt8`, `UInt16`, `UInt32` 

```swift
if let scalar = UnicodeScalar(97) {
    let character = Character(scalar)
    print(character)
}
```

We can also convert to a `String`, if we want to concatenate to another `String` (for example).

```swift
let stringConcatenated = String(character) + String(additionalCharacter)
print(stringConcatenated)
```

We can manipulate the `unicodeScalars` view directly, which is efficient and idiomatic in Swift. 

```swift
let additionalScalar = UnicodeScalar("B")
string.unicodeScalars.append(additionalScalar)
print(string)
```

## String Index
We can't directly access the index of `String` types. That is `string[1]` will not work.

**Cast to Array**
This means we cast to an `Array`.

```swift
let stringArray = Array(string)
stringArray[0]
```

This is inefficient as we need to create a new `Array` instance before we index it.

**Use index**
We can use startIndex and reference the `String` directly.
```swift
string[string.startIndex]
```

That's great, and we can also use the endIndex. However the endIndex will be out of bounds.
```swift
print(string[string.endIndex]) // out of bounds error
```

So since string.endIndex represents the position after the last character of the string, we need to offset it by one. Luckily Swift has us covered.

```swift
let endStringIndex = string.index(string.endIndex, offsetBy: -1)
string[endStringIndex]
```
