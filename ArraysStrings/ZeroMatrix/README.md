

// Write an algorithm such that if an element in an M x N matrix is 0, its entire row and column are set to 0. Average O(M + N) complexity.

O(n * m) naive solution with O(n * m) space

```swift
final class Solution {
    func setZeroes(_ matrix: inout [[Int]]) {
        var copyMatrix = matrix
        for row in copyMatrix.enumerated() {
            for columnElement in row.element.enumerated() {
                if columnElement.element == 0 {
                    for zeroColumn in 0..<matrix[0].count {
                        matrix[row.offset][zeroColumn] = 0
                    }
                    
                    for zeroRow in 0..<matrix.count {
                        matrix[zeroRow][columnElement.offset] = 0
                    }
                }
            }
        }
    }
}
```

// Instead of copying the whole matrix we can create a horizontal and vertical array to store which row and which column has a zero.

O(n * m) naive solution with O(n + m) space. The average case for this is actually worse than the solution above! Average O(M * N) complexity

```swift
final class Solution {
    func setZeroes(_ matrix: inout [[Int]]) {
        var columnZeros = Array(repeating: 1, count: matrix[0].count)
        var rowZeros = Array(repeating: 1, count: matrix.count)
        
        for row in matrix.enumerated() {
            for column in row.element.enumerated() {
                if matrix[row.offset][column.offset] == 0 {
                    columnZeros[column.offset] = 0
                    rowZeros[row.offset] = 0
                }
            }
        }
        
        for row in matrix.enumerated() {
            for column in row.element.enumerated() {
                if columnZeros[column.offset] == 0 || rowZeros[row.offset] == 0 {
                    matrix[row.offset][column.offset] = 0
                }
            }
        }
    }
}
```


Instead of using the extra space and creating new arrays, we can use the existing space in the matrix.

But there is a problem if we do that. The position [0, 0] cannot account for both the row and the column. To solve this we can use an extra variable, making the extra space required for the solution O(n).


---

This variable can represent the first row.

The order of matrix[0][0] == 0 and firstCol == 0 matters so matrix[0][0] isn't overridden by firstRow before it is used.

final class Solution {
    func setZeroes(_ matrix: inout [[Int]]) {
        var firstCol = 1
        for row in 0..<matrix.count {
            for column in 0..<matrix[0].count {
                if matrix[row][column] == 0 {
                    if row == 0 {
                        firstCol = 0
                        continue
                    }
                    matrix[0][column] = 0
                    matrix[row][0] = 0
                }
            }
        }
        
        for row in 1..<matrix.count {
            for column in 1..<matrix[0].count {
                if matrix[0][column] == 0 || matrix[row][0] == 0 {
                    matrix[row][column] = 0
                }
            }
        }
        
        if matrix[0][0] == 0 {
            for row in 0..<matrix.count {
                matrix[row][0] = 0
            }
        }
        
        if firstCol == 0 {
            for col in 0..<matrix[0].count {
                matrix[0][col] = 0
            }
        }
    }
}
