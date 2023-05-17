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
    // var result = Int()
    var count = Int()
    for item in path {
        if item.lowercased() == "u" {
            count += 1
        } else if item.lowercased() == "d" {
            count -= 1
        }
    }
    return (count == 0) ? 1 : count
}
 
print("Result: \(countingValleys(steps: 12, path: "DDUUDDUDUUUD"))")
