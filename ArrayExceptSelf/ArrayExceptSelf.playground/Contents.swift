import UIKit

func productExceptSelf(_ nums: [Int]) -> [Int] {
    var temp: [Int] = []
    var prefix = Array(repeating: 1, count: nums.count)
    // Build prefix products
    for i in 1..<nums.count {
        prefix[i] = prefix[i - 1] * nums[i - 1]
    }
    
    print(prefix)
    
    for i in 0..<nums.count {
        var sum = 1
        for (j, num2) in nums.enumerated() {
            if i != j {
                sum = sum * num2
            }
        }
        temp.append(sum)
    }
    return temp
}

productExceptSelf([1,2,3,4])
productExceptSelf([-1,1,0,-3,3])
