import Foundation

/*
 * Complete the 'miniMaxSum' function below.
 *
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func miniMaxSum(arr: [Int]) -> Void {
    var minValue = Int()
    var maxValue = Int()
    for index in arr.indices {
        var tempArr = arr
        tempArr.remove(at: index)
        let temp = tempArr.reduce(0, +)
        if minValue == 0 || maxValue == 0 {
            minValue = temp
            maxValue = temp
        } else if temp > maxValue {
            maxValue = temp
        } else if temp < minValue {
            minValue = temp
        }
    }
    print("[\(minValue) \(maxValue)]")
}

let arr = [5, 5, 5, 5, 5]
miniMaxSum(arr: arr)
