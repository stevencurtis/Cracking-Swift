# Rotate Matrix

Difficulty: Beginner | Easy | **Normal** | Challenging<br/>

Given an image represented by an N x N matrix, where each pixel in the image is represented by an integer, write a method to rotate the image by 90 degrees. Can you do this in place?


```swift
final class Solution {
    func rotateMatrix(matrix: [[Int]]) -> [[Int]] {
        var result: [[Int]] = Array(repeating: Array([]), count: matrix.count)
        for row in matrix {
            for column in row.enumerated() {
                result[column.offset].insert(column.element, at: 0)
            }
        }
        return result
    }
}

final class SolutionTests: XCTestCase {
    private var solution: Solution!
    override func setUp() {
        self.solution = Solution()
    }
    
    func testRotateMatrix() {
        XCTAssertEqual(solution.rotateMatrix(matrix: [[1, 2, 3], [4, 5, 6], [7, 8, 9]]), [[7, 4, 1], [8, 5, 2], [9, 6, 3]])
    }
}

SolutionTests.defaultTestSuite.run()
```

This is quite naive using insert, because insert is quite inefficient.


Better would be an O(n) solution:

```swift
final class Solution {
    func rotateMatrix(matrix: inout [[Int]]) {
        // iterate over each layer
        for i in 0..<matrix.count / 2 {
            let first = i
            let last = matrix.count - 1 - i
            
            // top to temp
            var temp = matrix[first][first...last]
            // left to top
            for j in first...last {
                matrix[first][last - j + first] = matrix[j][first]
            }
            
//             bottom to left
            for j in first...last {
                matrix[j][first] = matrix[last][j]
            }
            
//             right to bottom
            for j in (first + 1..<last).reversed() {
                matrix[last][last - j + first] = matrix[j][last]
            }
            print(matrix)

//             temp to right
            for j in first...last {
                matrix[j][last] = temp[j]
            }
        }
    }
}
```




# Conclusion

If you've any questions, comments or suggestions please hit me up on [Twitter](https://twitter.com/stevenpcurtis) 
