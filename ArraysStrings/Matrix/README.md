# Matrix

## Rows and columns

If you wish to select an element in a matix, choose the row before the column.

| A | B |
|---|---|
| C | D |

so
grid[0][0] == "A"
grid[0][1] == "B"
grid[1][0] == "C"
grid[1][1] == "D"

*Iterate over rows*
Using a for loop:
`for row in grid`
Using an index:
`for i in 0..<grid.count`

*Iterate over columns*
Using a for loop
`for column in 0..<grid[0].count`
Using an index:
`for i in 0..<grid[0].count {
    for j in 0..<grid.count {
        let element = grid[j][i]
    }
}``

*stride*
It can be useful to use stride. Through includes all of the elements but to is exclusive. Choose carefully!

## Spiral Matrix
Given an m x n matrix, return all elements of the matrix in spiral order.

![Images/simple.png](Images/simple.png)<br>
