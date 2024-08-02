import UIKit
import XCTest

//Given an image represented by an N x N matrix, where each pixel in the image is represented by an integer, write a method to rotate the image by 90 degrees. Can you do this in place?

//final class Solution {
//    func rotateMatrix(matrix: [[Int]]) -> [[Int]] {
//        var result: [[Int]] = Array(repeating: Array([0, 0, 0]), count: matrix.count)
//        for row in matrix.enumerated() {
//            for column in row.element.enumerated() {
//                result[column.offset][matrix.count - 1 - row.offset] = column.element
//            }
//        }
//        return result
//    }
//}

//final class Solution {
//    func rotateMatrix(matrix: inout [[Int]]) {
//        matrix.reverse()
//        for row in matrix.enumerated() {
//            for column in row.element.enumerated() {
//                matrix[column.offset][matrix.count - 1 - row.offset] = column.element
//            }
//        }
//    }
//}


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

final class SolutionTests: XCTestCase {
    private var solution: Solution!
    override func setUp() {
        self.solution = Solution()
    }
    
//    func testRotateMatrix() {
//        XCTAssertEqual(solution.rotateMatrix(matrix: [[1, 2, 3], [4, 5, 6], [7, 8, 9]]), [[7, 4, 1], [8, 5, 2], [9, 6, 3]])
//    }
    
    func testRotateMatrixInPlace() {
        var matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
        solution.rotateMatrix(matrix: &matrix)
        XCTAssertEqual(matrix, [[7, 4, 1], [8, 5, 2], [9, 6, 3]])
    }
    
//    func testRotateMatrixInPlaceTwo() {
//        var matrix = [[5,1,9,11],[2,4,8,10],[13,3,6,7],[15,14,12,16]]
//        solution.rotateMatrix(matrix: &matrix)
//        XCTAssertEqual(matrix, [[15,13,2,5],[14,3,4,1],[12,6,8,9],[16,7,10,11]])
//    }
}

SolutionTests.defaultTestSuite.run()
