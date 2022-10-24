import Foundation

func threeNumberSum(array: [Int], targetSum: Int) -> [[Int]] { 
    var arr = array
    arr.sort(by: >)
    var hashtable = [Int: [Int]]()
    var key = 0
    for (item, element) in arr.enumerated() {
        if element > targetSum {
            continue
        } else {
            if let dict = hashtable[key], dict.count == 3 {
                dict.count > 3
            } else {
                hashtable[key] = item
            }
        }
    }
    return result
}

print(threeNumberSum(array: [12, 3, 1, 2, -6, 5, -8, 6], targetSum: 0))
// print(threeNumberSum(array: [1, 2, 3], targetSum: 6))
// print(threeNumberSum(array: [1, 2, 3, 4, 5, 6, 7, 8, 9, 15], targetSum: 5))

