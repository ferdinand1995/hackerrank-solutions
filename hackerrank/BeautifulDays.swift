import Foundation

/*
 * Complete the 'beautifulDays' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER i
 *  2. INTEGER j
 *  3. INTEGER k
 */

func beautifulDays(i: Int, j: Int, k: Int) -> Int {
    // Write your code here
    let arr = i...j
    var result = Int()
    for i in arr {
        let reverse = reverseNumber(i)
        let tempNumber = abs(i - reverse)
        if tempNumber % k == 0 {
            result += 1
        }
    }
    return result
}

private func reverseNumber(_ number: Int) -> Int {
    var reverse: Int = 0
    var n:Int = number
    while (n != 0) {
        reverse = reverse * 10
        reverse = reverse + n % 10
        n = n / 10
    }
    return reverse
}

let result = beautifulDays(i: 20, j: 23, k: 6)

print(result)
