import Foundation

/*
 * Complete the 'hurdleRace' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER k
 *  2. INTEGER_ARRAY height
 */

func hurdleRace(k: Int, height: [Int]) -> Int {
    // Write your code here
    let maxHurdle = height.max()
    guard let maxHurdle = maxHurdle else { return 0 }
    let doses = maxHurdle-k
    return doses >= 0 ? doses : 0

}

// let result: Int = hurdleRace(k: 4, height: [1, 6, 3, 5, 2])
let result: Int = hurdleRace(k: 7, height: [2, 5, 4, 5, 2])
print(result)
