import Foundation

/*
 * Complete the 'birthdayCakeCandles' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY candles as parameter.
 */

func birthdayCakeCandles(_ candles: [Int]) -> Int {
    var result = [Int]()
    for item in candles {
        if result.count == 0 {
            result.append(item)
        } else if let resultFirst = result.first, resultFirst < item {
            result.removeFirst()
            result.append(item)
        } else if let resultFirst = result.first, resultFirst == item {
            result.append(item)
        }
    }
    return result.count
}

let candles = [3, 2, 1, 3]
print("result = \(birthdayCakeCandles(candles))")
