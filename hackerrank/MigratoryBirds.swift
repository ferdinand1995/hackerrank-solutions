import Foundation

/*
 * Complete the 'migratoryBirds' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func migratoryBirds(arr: [Int]) -> Int {
    let type1 = arr.filter({ $0 == 1 })
    let type2 = arr.filter({ $0 == 2 })
    let type3 = arr.filter({ $0 == 3 })
    let type4 = arr.filter({ $0 == 4 })
    let type5 = arr.filter({ $0 == 5 })
    let birdsType = [type1.count, type2.count, type3.count, type4.count, type5.count]
    if let birdsTypeMax = birdsType.max() {
        let itemIndex = birdsType.firstIndex(where: {$0 == birdsTypeMax})
        switch itemIndex! {
            case 0:
            return 1
            case 1:
            return 2
            case 2: 
            return 3
            case 3:
            return 4
            case 4:
            return 5
            default:
            return -1
        }
    }
    return 0
}

let result = migratoryBirds(arr: [1, 2, 3, 4, 5, 4, 3, 2, 1, 3, 4])
print(result)
