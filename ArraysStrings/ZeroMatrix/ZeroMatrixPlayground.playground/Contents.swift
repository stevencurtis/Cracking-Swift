import UIKit
import XCTest

// Write an algorithm such that if an element in an M x N matrix is 0, its entire row and column are set to 0.

//final class Solution {
//    func setZeroes(_ matrix: inout [[Int]]) {
//        var copyMatrix = matrix
//        for row in copyMatrix.enumerated() {
//            for columnElement in row.element.enumerated() {
//                if columnElement.element == 0 {
//                    for zeroColumn in 0..<matrix[0].count {
//                        matrix[row.offset][zeroColumn] = 0
//                    }
//                    
//                    for zeroRow in 0..<matrix.count {
//                        matrix[zeroRow][columnElement.offset] = 0
//                    }
//                }
//            }
//        }
//    }
//}

//final class Solution {
//    func setZeroes(_ matrix: inout [[Int]]) {
//        var columnZeros = Array(repeating: 1, count: matrix[0].count)
//        var rowZeros = Array(repeating: 1, count: matrix.count)
//        
//        for row in matrix.enumerated() {
//            for column in row.element.enumerated() {
//                if matrix[row.offset][column.offset] == 0 {
//                    columnZeros[column.offset] = 0
//                    rowZeros[row.offset] = 0
//                }
//            }
//        }
//        
//        for row in matrix.enumerated() {
//            for column in row.element.enumerated() {
//                if columnZeros[column.offset] == 0 || rowZeros[row.offset] == 0 {
//                    matrix[row.offset][column.offset] = 0
//                }
//            }
//        }
//    }
//}

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


final class SolutionTest: XCTestCase {
    private var solution: Solution!
    override func setUp() {
        self.solution = Solution()
    }
//    func testSolution() {
//        var matrix = [[1, 1, 1], [1, 0, 1], [1, 1, 1]]
//        solution.setZeroes(&matrix)
//        XCTAssertEqual(matrix, [[1, 0, 1], [0, 0, 0], [1, 0, 1]])
//    }
//    func testSolution2() {
//        var matrix = [[0,1,2,0],[3,4,5,2],[1,3,1,5]]
//        solution.setZeroes(&matrix)
//        XCTAssertEqual(matrix, [[0,0,0,0],[0,4,5,0],[0,3,1,0]])
//    }
    
    func testSolution3() {
        var matrix = [[-4,-2147483648,6,-7,0],[-8,6,-8,-6,0],[2147483647,2,-9,-6,-10]]
        solution.setZeroes(&matrix)
        XCTAssertEqual(matrix, [[0,0,0,0,0],[0,0,0,0,0],[2147483647,2,-9,-6,0]])
    }
}

SolutionTest.defaultTestSuite.run()
