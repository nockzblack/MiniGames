//: Playground - noun: a place where people can play

import Foundation

// MARK : Board

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
            assert(indexIsValid(row: row, column: column), "Index out of range on getting value")
            return grid[(row * columns) + column]
        }
        set {
            assert(indexIsValid(row: row, column: column), "Index out of range trying to set new value")
            grid[(row * columns) + column] = newValue
        }
    }
}

// MARK : MAKINKG THE MDOEL OF THE GAME

class game {
    var board = Board(rows: 3, columns: 3)
    
    func userChoosedCell(at row:Int, _ column:Int) {
        board[row, column] = 1
    }
    
    func AIChoosedCell(row:Int, column:Int) {
        board[row,column] = 2
    }
    
    func printBoard() {
        for i in 0..<3 {
            for j in 0..<3 {
                if let value = board[i,j] {
                    print(value, terminator: ",")
                } else {
                    print(board[i,j], terminator: ",")
                }
                
            }
            print("\n")
        }
        print("\n")
        
    }
    
    func isThereAWinner() -> Bool {
        
        if checkUpToDownDiagonal() {
            print("checkUpToDownDiagonal")
            return true
        } else if checkDownToUpDiagonal() {
            print("checkDownToUpDiagonal")
            return true
        } else if checkLeftVertical() {
            print("checkLeftVertical JAJA")
            return true
        } else if checkCenterVertical() {
            print("checkCenterVertical")
            return true
        } else if checkRightVertical() {
            print("checkRightVertical")
            return true
        } else if checkUpHorizontal() {
            print("checkUpHorizontal")
            return true
        } else if checkCenterHorizontal() {
            print("checkCenterHorizontal")
            return true
        } else if checkDownHorizontal() {
            print("checkDownHorizontal")
            return true
        }
        return false
    }
    
    func checkUpToDownDiagonal() -> Bool {
        if (self.board[0,0] == self.board[1,1] && self.board[0,0] == self.board[2,2]) {
            return true
        }
        return false
    }
    
    func checkDownToUpDiagonal() -> Bool {
        if (self.board[2,0] == self.board[1,1] && self.board[2,0] == self.board[0,2]) {
            return true
        }
        return false
    }
    
    func checkLeftVertical() -> Bool {
        if (self.board[0,0] == self.board[1,0] && self.board[0,0] == self.board[2,0]) {
            return true
        }
        return false
    }
    
    func checkCenterVertical() -> Bool {
        if (self.board[0,1] == self.board[1,1] && self.board[0,1] == self.board[2,1]) {
            return true
        }
        return false
    }
    
    func checkRightVertical() -> Bool {
        if (self.board[0,2] == self.board[1,2] && self.board[0,2] == self.board[2,2]) {
            return true
        }
        return false
    }
    
    func checkUpHorizontal() -> Bool {
        if (self.board[0,0] == self.board[0,1] && self.board[0,0] == self.board[0,2]) {
            return true
        }
        return false
    }
    
    func checkCenterHorizontal() -> Bool {
        if (self.board[1,0] == self.board[1,1] && self.board[1,0] == self.board[1,2]) {
            return true
        }
        return false
    }
    
    func checkDownHorizontal() -> Bool {
        if (self.board[2,0] == self.board[2,1] && self.board[2,0] == self.board[2,2]) {
            return true
        }
        return false
    }

}



let newGame = game()
newGame.printBoard()

newGame.userChoosedCell(at: 0,1)
newGame.userChoosedCell(at: 1,1)
newGame.userChoosedCell(at: 2,1)
newGame.printBoard()
var result = newGame.isThereAWinner()

/*
 TODO :
    dont make a check when the board is on 0
 */



