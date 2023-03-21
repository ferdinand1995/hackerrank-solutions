import Foundation

func maxIndex(steps: Int, badIndex: Int) -> Int {
    var result = Int()
    var i = Int()
    for j in 1...steps {
        if i+j == badIndex {
            continue
        } else {
            print("i: \(i)")
            print("j: \(j)")
            result = (i+j)
            print("result: \(result)")
        }
        i = result
    }
    return result
}

print(maxIndex(steps: 2, badIndex: 2))