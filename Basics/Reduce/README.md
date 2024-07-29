# Reduce


## Simple Usage
```swift
let sum = array
    .filter { $0.isLetter }
    .reduce(0, +)
```
## Dictionary
Count the number of values
```swift
dictionary.values.reduce(0, +)
```
