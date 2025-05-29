import UIKit

func isValidSudoku(_ board: [[Character]]) -> Bool {
    var rows: [Int: Set<Character>] = [:]
    var cols: [Int: Set<Character>] = [:]
    var boxes: [Int: Set<Character>] = [:]
    
    for i in 0..<9 {
        for j in 0..<9 {
            var num = board[i][j]
            if num == "." { continue }
            
            if let row = rows[i], row.contains(num) {
                return false
            }
            
            if rows[i] == nil {
                rows[i] = Set<Character>([num])
            }
            rows[i]?.insert(num)
        
            if let cols = cols[j], cols.contains(num) {
                return false
            }
            
            if cols[j] == nil {
                cols[j] = Set<Character>([num])
            }
            cols[j]?.insert(num)
        
            let indexBoxes = (i/3) * 3 + (j/3)
            
            if let boxes = boxes[indexBoxes], boxes.contains(num) {
                 return false
            }
            
            if boxes[indexBoxes] == nil {
                boxes[indexBoxes] = Set<Character>([num])
            }
            boxes[indexBoxes]?.insert(num)
        }
    }
    
    return true
}

let valid: [[Character]] = [
    ["5","3",".",".","7",".",".",".","."],
    ["6",".",".","1","9","5",".",".","."],
    [".","9","8",".",".",".",".","6","."],
    ["8",".",".",".","6",".",".",".","3"],
    ["4",".",".","8",".","3",".",".","1"],
    ["7",".",".",".","2",".",".",".","6"],
    [".","6",".",".",".",".","2","8","."],
    [".",".",".","4","1","9",".",".","5"],
    [".",".",".",".","8",".",".","7","9"]
]

isValidSudoku(valid)

let notValid: [[Character]] = [
    ["8","3",".",".","7",".",".",".","."],
    ["6",".",".","1","9","5",".",".","."],
    [".","9","8",".",".",".",".","6","."],
    ["8",".",".",".","6",".",".",".","3"],
    ["4",".",".","8",".","3",".",".","1"],
    ["7",".",".",".","2",".",".",".","6"],
    [".","6",".",".",".",".","2","8","."],
    [".",".",".","4","1","9",".",".","5"],
    [".",".",".",".","8",".",".","7","9"]
]

isValidSudoku(notValid)
