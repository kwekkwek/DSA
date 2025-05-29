import UIKit

func mergeAlternately(_ word1: String, _ word2: String) -> String {
    let arr1 = Array(word1)
    let arr2 = Array(word2)
    var temp = ""
    
    for i in 0..<max(word1.count, word2.count) {
        if i < arr1.count {
            temp.append(arr1[i])
        }
        
        if i < arr2.count {
            temp.append(arr2[i])
        }
    }
    
    return temp
}

mergeAlternately("abc", "pqr")
mergeAlternately("ab", "pqrs")
