import Foundation

/*
 * Complete the 'utopianTree' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER n as parameter.
 */

func utopianTree(n: Int) -> Int {
    var height = 0
    for p in 0...n {
        if p % 2 == 0 {
            height += 1
        } else {
            height = height*2
        }
    }
    return height
}

let result = utopianTree(n: 4)
print("result: \(result)")
