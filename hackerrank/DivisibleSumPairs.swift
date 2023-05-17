import Foundation

/*
 * Complete the 'divisibleSumPairs' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER n
 *  2. INTEGER k
 *  3. INTEGER_ARRAY ar
 */

func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
    var result = Int() 
    for (i, x) in ar.enumerated() {
        for y in ar[i+1 ..< ar.count] {
            if (x + y) % k == 0 {
                result += 1
            }
        }
    
    }
    return result
}

let result = divisibleSumPairs(n: 2, k: 2, ar: [8, 10])
print(result)