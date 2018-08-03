//
//  Board.swift
//  TicTacToe
//
//  Created by Fernando Benavides Rodriguez on 8/2/18.
//  Copyright © 2018 Nockzblack. All rights reserved.
//

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
