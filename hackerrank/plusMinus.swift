import Foundation

/*
func plusMinus(arr: [Int]) -> [Float]{
    let arrCount = arr.count
    let areZeroValue = arr.filter({ $0 == 0 }).count
    let ratioZeroValue = Float(areZeroValue) / Float(arrCount)
    let notZeroValue = arr.filter({ $0 != 0 })
    let totalMinusValue = notZeroValue.map({Float($0)}).filter({ $0.sign == .minus }).count
    let ratioMinus = Float(totalMinusValue) / Float(arrCount)
    let totalPositiveValue = notZeroValue.map({Float($0)}).filter({ $0.sign == .plus }).count
    let ratioPositive = Float(totalPositiveValue) / Float(arrCount)
    return [ratioPositive, ratioMinus, ratioZeroValue]
}

print(plusMinus(arr: [-4, 3, -9, 0, 4, 1]))*/

func staircase(n: Int) -> Void {
    var line = String()
    for i in (1...n).reversed() {
        line += String(repeating: " ", count: i - 1) + String(repeating: "#", count: n + 1 - i) + "\n"
    }
    print(line)
}

staircase(n: 6)