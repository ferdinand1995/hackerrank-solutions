import Foundation

/*
 * Complete the getMoneySpent function below.
 */
func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
    var maxSum = -1
    for keyPrice in keyboards {
        for drivePrice in drives {
            let sum = keyPrice + drivePrice
            if sum <= b && sum > maxSum {
                maxSum = sum
            }
        }
    }
    return maxSum

// let moneySpent = getMoneySpent(keyboards: [3, 1], drives: [5, 2, 8], b: 10)
let moneySpent = getMoneySpent(keyboards: [4], drives: [5], b: 5)
print(moneySpent)