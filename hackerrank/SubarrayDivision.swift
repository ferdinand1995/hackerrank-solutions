import Foundation

/*
 * Complete the 'birthday' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY s
 *  2. INTEGER d
 *  3. INTEGER m
 */

func birthday(s: [Int], d: Int, m: Int) -> Int {
    var result = Int()
    for i in 0...s.count {
        let month = m + i
        if month <= s.count { 
            let newArray = s[i..<month].reduce(0, +)
            if newArray == d {
                result += 1
            }
        }
    }
    return result
}

let result = birthday(s: [4], d: 4, m: 1)
print(result)
