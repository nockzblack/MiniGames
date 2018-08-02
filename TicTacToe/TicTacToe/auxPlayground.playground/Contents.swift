//: Playground - noun: a place where people can play

import Foundation

// MARK : MAKINKG THE MDOEL OF THE GAME

class game {
    var board = Array(repeating: Array(repeating: 0, count: 3), count: 3)
    
    func userChoosedCell(at row:Int, _ column:Int) {
        board[row][column] = 1
    }
    
    func AIChoosedCell(row:Int, column:Int) {
        board[row][column] = 2
    }
    
    func printBoard() {
        for i in board {
            for j in i {
                print(j, terminator: ",")
            }
            print("\n")
        }
        
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
        if (self.board[0][0] == self.board[1][1] && self.board[0][0] == self.board[2][2]) {
            return true
        }
        return false
    }
    
    func checkDownToUpDiagonal() -> Bool {
        if (self.board[2][0] == self.board[1][1] && self.board[2][0] == self.board[0][2]) {
            return true
        }
        return false
    }
    
    func checkLeftVertical() -> Bool {
        if (self.board[0][0] == self.board[1][0] && self.board[0][0] == self.board[2][0]) {
            return true
        }
        return false
    }
    
    func checkCenterVertical() -> Bool {
        if (self.board[0][1] == self.board[1][1] && self.board[0][1] == self.board[2][1]) {
            return true
        }
        return false
    }
    
    func checkRightVertical() -> Bool {
        if (self.board[0][2] == self.board[1][2] && self.board[0][2] == self.board[2][2]) {
            return true
        }
        return false
    }
    
    func checkUpHorizontal() -> Bool {
        if (self.board[0][0] == self.board[0][1] && self.board[0][0] == self.board[0][2]) {
            return true
        }
        return false
    }
    
    func checkCenterHorizontal() -> Bool {
        if (self.board[1][0] == self.board[1][1] && self.board[1][0] == self.board[1][2]) {
            return true
        }
        return false
    }
    
    func checkDownHorizontal() -> Bool {
        if (self.board[2][0] == self.board[2][1] && self.board[2][0] == self.board[2][2]) {
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



