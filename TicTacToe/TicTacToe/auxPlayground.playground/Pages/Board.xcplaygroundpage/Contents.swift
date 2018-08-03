//: [Previous](@previous)

import Foundation

struct Board {
    let rows: Int, columns:Int
    var grid: [Int?]
    
    init(rows: Int, columns:Int) {
        self.rows = rows
        self.columns = columns
        self.grid = Array(repeating: nil, count: rows * columns)
    }
    
    func indexIsValid(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    
    subscript(row: Int, column: Int) -> Int? {
        get {
            assert(indexIsValid(row: row, column: column), "Index out of range getting value")
            return grid[(row * columns) + column]
        }
        set {
            assert(indexIsValid(row: row, column: column), "Index out of range trying to set new value")
            grid[(row * columns) + column] = newValue
        }
    }
}

var board = Board(rows: 3, columns: 3)

let x = board[0,0]
