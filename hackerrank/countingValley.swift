import Foundation

/*
 * Complete the 'countingValleys' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER steps
 *  2. STRING path
 */

func countingValleys(steps: Int, path: String) -> Int {
    var res = 0
    var level = 0
    for c in path {
        if c == "U" {
            level += 1
            if level == 0 {
                res += 1 
            }
        } else {
            level -= 1
        }
    }
    return res
}
 
print("Result: \(countingValleys(steps: 12, path: "DDUUDDUDUUUD"))")
