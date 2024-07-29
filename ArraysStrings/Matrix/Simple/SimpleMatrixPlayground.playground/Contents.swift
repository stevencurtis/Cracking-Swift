import UIKit
import XCTest

class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        var result = [Int]()
        var minRow = 0
        var minColumn = 0
        var maxRow = matrix.count - 1
        var maxColumn = matrix[0].count - 1
        let matrixSize = matrix[0].count * matrix.count
        
        while maxRow >= minRow && maxColumn >= minColumn {
//        while minRow <= maxRow && minColumn <= maxColumn {
            // top
            guard result.count < matrixSize else { return result }
            for column in minColumn...maxColumn {
                result.append(matrix[minRow][column])
            }
            minRow += 1
            
            // right
            guard result.count < matrixSize else { return result }
            for row in minRow...maxRow {
                result.append(matrix[row][maxColumn])
            }
            maxColumn -= 1
            
            // bottom
            guard result.count < matrixSize else { return result }
            for column in (minColumn...maxColumn).reversed() {
                result.append(matrix[maxRow][column])
            }
            maxRow -= 1
            
            // left
            guard result.count < matrixSize else { return result }
            for row in (minRow...maxRow).reversed() {
                result.append(matrix[row][minColumn])
            }
            minColumn += 1
        }
        

        return result
    }
}

final class SolutionTest: XCTestCase {
    private(set) var solution: Solution!
    override func setUp() {
        solution = Solution()
    }

    func testSpiral() {
        XCTAssertEqual(solution.spiralOrder([[1,2,3],[4,5,6],[7,8,9]]), [1,2,3,6,9,8,7,4,5])
    }
}

SolutionTest.defaultTestSuite.run()
