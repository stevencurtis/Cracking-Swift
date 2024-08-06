import UIKit
import XCTest

// Write an algorithm such that if an element in an M x N matrix is 0, its entire row and column are set to 0.

final class Solution {
    func setZeroes(_ matrix: inout [[Int]]) {
        
    }
}

final class SolutionTest: XCTestCase {
    private var solution: Solution!
    override func setUp() {
        self.solution = Solution()
    }
    func testSolution() {
        var matrix = [[1, 1, 1], [1, 0, 1], [1, 1, 1]]
        solution.setZeroes(&matrix)
        XCTAssertEqual(matrix, [[1, 0, 1], [0, 0, 0], [1, 0, 1]])
    }
}

SolutionTest.defaultTestSuite.run()
