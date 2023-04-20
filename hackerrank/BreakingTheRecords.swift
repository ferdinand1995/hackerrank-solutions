import Foundation

/*
 * Complete the 'breakingRecords' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY scores as parameter.
 */

func breakingRecords(scores: [Int]) -> [Int] {
    var scoreBook = [Int]() 
    var scoreBookMax = [Int]()
    var scoreBookMin = [Int]()
    var result = [0, 0]
    for item in scores {
        scoreBook.append(item)
        let numMax = scoreBook.reduce(Int.min, { max($0, $1) })
        let numMin = scoreBook.reduce(Int.max, { min($0, $1) })
        
        if let lastScoreBookMax = scoreBookMax.last, lastScoreBookMax < numMax {
            result[0] += 1
            
        }
        scoreBookMax.append(numMax)
        
        if let lastScoreBookMin = scoreBookMin.last, lastScoreBookMin > numMin {
            result[1] += 1
        }
        scoreBookMin.append(numMin)
    }
    return result
}

print(breakingRecords(scores: [3, 4, 21, 36, 10, 28, 35, 5, 24, 42]))
