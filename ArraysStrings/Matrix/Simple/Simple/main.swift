import Foundation

final class MyCode {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        []
    }
}

let code = MyCode()
print(code.spiralOrder([[1,2,3],[4,5,6],[7,8,9]])) // [1,2,3,6,9,8,7,4,5]
//print(code.spiralOrder([[1,2,3,4],[5,6,7,8],[9,10,11,12]])) // [1,2,3,4,8,12,11,10,9,5,6,7]
























//final class MyCode {
//    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
//        let matrixCount = matrix.count * matrix[0].count
//        var minRow = 0
//        var maxRow = matrix.count - 1
//        var minColumn = 0
//        var maxColumn = matrix[0].count - 1
//        var output: [Int] = []
//        while minRow <= maxRow, minColumn <= maxColumn {
//            guard output.count < matrixCount else { return output }
//            for i in minColumn...maxColumn {
//                output.append(matrix[minRow][i])
//            }
//            minRow += 1
//            guard output.count < matrixCount else { return output }
//            for j in minRow...maxRow {
//                output.append(matrix[j][maxColumn])
//            }
//            maxColumn -= 1
//            guard output.count < matrixCount else { return output }
//
//            for i in (minColumn...maxColumn).reversed() {
//                output.append(matrix[maxRow][i])
//            }
//            maxRow -= 1
//            guard output.count < matrixCount else { return output }
//            for j in (minRow...maxRow).reversed() {
//                output.append(matrix[j][minColumn])
//            }
//            minColumn += 1
//        }
//        
//        return output
//    }
//}

// Given an m x n matrix, return all elements of the matrix in spiral order.
//final class MyCode {
//    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
//        guard matrix.count > 0 else {return []}
//        var minRow = 0
//        var maxRow = matrix.count - 1
//        var minCol = 0
//        var maxCol = matrix[0].count - 1
//        var output : [Int] = []
//        let matrixSize = matrix[0].count * matrix.count
//        
//        while minRow <= maxRow && minCol <= maxCol {
//            guard matrixSize > output.count else { return output }
//            for j in stride(from: minCol, through: maxCol, by: 1) where minRow <= maxRow {
//                output.append(matrix[minRow][j])
//            }
//            minRow += 1
//            
//            // 2. Downward
//            guard matrixSize > output.count else { return output }
//            for i in minRow..<maxRow + 1 {
//                output.append(matrix[i][maxCol])
//            }
//            maxCol -= 1
//            
//            // 3. Leftward
//            guard matrixSize > output.count else { return output }
//            for j in stride(from: maxCol, through: minCol, by: -1) where minRow <= maxRow {
//                output.append(matrix[maxRow][j])
//            }
//            maxRow -= 1
//            
//            // 4. Upward
//            guard matrixSize > output.count else { return output }
//            for row in stride(from: maxRow, to: minRow - 1, by: -1) where minCol <= maxCol {
//                output.append(matrix[row][minCol])
//            }
//            
//            minCol += 1
//        }
//        return output
//    }
//}

//final class MyCode {
//    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
//        guard matrix.count > 0 else {return []}
//        var minRow = 0
//        var maxRow = matrix.count - 1
//        var minCol = 0
//        var maxCol = matrix[0].count - 1
//        var output : [Int] = []
//        let matrixSize = matrix[0].count * matrix.count
//        
//        while minRow <= maxRow && minCol <= maxCol {
//            guard output.count < matrixSize else { return output }
//            for j in minCol..<maxCol + 1 {
//                output.append(matrix[minRow][j])
//            }
//            minRow += 1
//            
//            // 2. Downward
//            guard output.count < matrixSize else { return output }
//            for i in minRow..<maxRow + 1 {
//                output.append(matrix[i][maxCol])
//            }
//            maxCol -= 1
//            
//            // 3. Leftward
//            guard output.count < matrixSize else { return output }
//            for j in (minCol..<maxCol + 1).reversed() {
//                output.append(matrix[maxRow][j])
//            }
//            
//            maxRow -= 1
//            
//            // 3. Up
//            guard output.count < matrixSize else { return output }
//            for i in (minRow..<maxRow + 1).reversed() {
//                output.append(matrix[i][minCol])
//            }
//            minCol += 1
//        }
//        return output
//    }
//}
    
//let code = MyCode()
//print(code.spiralOrder([[1,2,3],[4,5,6],[7,8,9]])) // [1,2,3,6,9,8,7,4,5]
//print(code.spiralOrder([[1,2,3,4],[5,6,7,8],[9,10,11,12]])) // [1,2,3,4,8,12,11,10,9,5,6,7]
