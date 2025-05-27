import UIKit

func majorityElement(_ nums: [Int]) -> Int {
    var dict: [Int: Int] = [:]
    for num in nums {
        if let have = dict[num]{
            dict[num]! += 1
        } else {
            dict[num] = 1
        }
    }

    var temp = 0
    var max = 0
    for (key, value) in dict {
        if value > temp {
            temp = value
            max = key
        }
    }
    return max
}

majorityElement([2,2,1,1,1,2,2])
