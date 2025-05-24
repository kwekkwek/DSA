import UIKit

func moveZeroes(_ nums: inout [Int]) {
    guard !nums.isEmpty else { return }
    var zeroIndex = 0
    for i in 0..<nums.count {
        if nums[i] != 0 {
            nums.swapAt(i, zeroIndex)
            zeroIndex += 1
        }
    }
}

var value = [0,1,0,3,12] // [0,0,1]
moveZeroes(&value)
//print(value)
