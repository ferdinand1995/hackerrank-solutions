import Foundation

/*
 * Complete the 'designerPdfViewer' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY h
 *  2. STRING word
 */

func designerPdfViewer(h: [Int], word: String) -> Int {
    var highestNumber: Int = 0
    for c in word {
        if highestNumber == 0 || highestNumber < h[findPosition(inputLetter: c)] {
            highestNumber = h[findPosition(inputLetter: c)]
        } else {
            continue
        }
    }
    let result: Int = highestNumber * word.count
    return result
}

private func findPosition(inputLetter: Character) -> Int {
    let alphabets: String = "abcdefghijklmnopqrstuvwxyz"
    let inputLetterToLowerCase: Character = Character(String(inputLetter).lowercased())
    if let index = alphabets.firstIndex(of: inputLetterToLowerCase) {
        let position = alphabets.distance(from: alphabets.startIndex, to: index)
        return position
    } else {
        return 0
    }
}

let result = designerPdfViewer(h: [1, 3, 1, 3, 1, 4, 1, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 7], word: "zaba")
print(result)
