import Foundation

/*
 * Complete the 'angryProfessor' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts following parameters:
 *  1. INTEGER k
 *  2. INTEGER_ARRAY a
 */

func angryProfessor(k: Int, a: [Int]) -> String {
    let onTimeStudent = a.filter({ $0 <= 0  }).count
    return onTimeStudent >= k ? "NO" : "YES"
}

// let result: String = angryProfessor(k: 3, a: [-2, -1, 0, 1, 2])
let result: String = angryProfessor(k: 3, a: [-1, -3, 4, 2])
// let result = angryProfessor(k: 2, a: [0, -1, 2, 1])
// let result = angryProfessor(k: 20, a: [97, -55, 48, -22, 99, -46, 40, 11, 5, -61, 78, -20, 44, 22, -8, 82, 24, -62, 0, 52, -79, 68, -73, -81, 33, 60, -99, -99, 59, -13, 90, -26, 84 ,90, 76, 36, -45, 79, 87, 48, 59, -36, 42, -6, -13, 21, -19, -21, 39, -40])
print(result)
