import Foundation

/*
 * Complete the 'formingMagicSquare' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts 2D_INTEGER_ARRAY s as parameter.
 */

func formingMagicSquare(s: [[Int]]) -> Int {
    
    let magicSquare = [
        [[8, 1, 6], [3, 5, 7], [4, 9, 2]],
        [[6, 1, 8], [7, 5, 3], [2, 9, 4]],
        [[4, 9, 2], [3, 5, 7], [8, 1, 6]],
        [[2, 9, 4], [7, 5, 3], [6, 1, 8]],
        [[8, 3, 4], [1, 5, 9], [6, 7, 2]],
        [[4, 3, 8], [9, 5, 1], [2, 7, 6]],
        [[6, 7, 2], [1, 5, 9], [8, 3, 4]],
        [[2, 7, 6], [9, 5, 1], [4, 3, 8]],
    ]

    var min: Int = 9
    for i in 0..<8 {
        let x = minimumFromMagiSqure(arr: s, magicSquare: magicSquare[i])
        print("source: \(x.1)")
        print("magic square number: \(x.2)")
        if x.0 < min {
            min = x.0
        }
    }
    return min
}

func minimumFromMagiSqure(arr: [[Int]], magicSquare: [[Int]]) -> (Int, Int, Int) {
    var result: Int = 0
    var source: Int = 0
    var magicSquareNum: Int = 0
    for i in 0..<3 {
        for j in 0..<3 {
            if arr[i][j] != magicSquare[i][j] {
                result += 1
                source = arr[i][j]
                magicSquareNum = magicSquare[i][j]
            }
        }
    }
    return (result, source, magicSquareNum)
}


let result: Int = formingMagicSquare(s: [[5, 3, 4], [1, 5, 8], [6, 4, 2]])
let result2: Int = formingMagicSquare(s: [[4, 9, 2], [3, 5, 7], [8, 1, 5]])
let result3: Int = formingMagicSquare(s: [[4, 8, 2], [4, 5, 7], [6, 1, 6]])

print(result3)