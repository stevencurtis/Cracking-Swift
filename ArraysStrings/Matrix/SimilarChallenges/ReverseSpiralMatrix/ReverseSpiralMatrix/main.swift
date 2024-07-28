import Foundation

// reverse spiral matrix for an mxn matrix
final class MyCode {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        var output: [Int] = []
        let matrixTotal = matrix.count * matrix[0].count
        var minRow = 0
        var maxRow = matrix.count - 1
        var minColumn = 0
        var maxColumn = matrix[0].count - 1
        while minRow <= maxRow && minColumn <= maxColumn {
            guard output.count < matrixTotal else { return output.reversed() }
            for i in minColumn...maxColumn {
                output.append(matrix[minRow][i])
            }
            minRow += 1
            guard output.count < matrixTotal else { return output.reversed() }
            for j in minRow...maxRow {
                output.append(matrix[j][maxColumn])
            }
            maxColumn -= 1
            guard output.count < matrixTotal else { return output.reversed() }
            for i in (minColumn...maxColumn).reversed() {
                output.append(matrix[maxRow][i])
            }
            maxRow -= 1
            guard output.count < matrixTotal else { return output.reversed() }
            for j in (minRow...maxRow).reversed() {
                output.append(matrix[j][minColumn])
            }
            minColumn += 1
        }
        return output.reversed()
    }
}

let sol = MyCode()
print(sol.spiralOrder([[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]]))
