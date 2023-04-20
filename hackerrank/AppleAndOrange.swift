import Foundation

/*
 * Complete the 'countApplesAndOranges' function below.
 *
 * The function accepts following parameters:
 *  1. INTEGER s
 *  2. INTEGER t
 *  3. INTEGER a
 *  4. INTEGER b
 *  5. INTEGER_ARRAY apples
 *  6. INTEGER_ARRAY oranges
 */

func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) {
    // this solution is not quite effective; since it'll loopp through samHouse's array
    let samHouse = Array(s...t)
    let distancesApplesTree = apples.map{ $0 + a }.filter{ samHouse.contains($0)}
    let distancesOrangesTree = oranges.map{ $0 + b }.filter{ samHouse.contains($0)}
    
    // this solution does not need to loop through the range of samHouse
    let distanceApples = apples.map{ $0 + a }.filter{ $0 >= s && $0 <= t }
    let distanceOranges = oranges.map{ $0 + b }.filter{ $0 >= s && $0 <= t }
    print(distanceApples.count)
    print(distanceOranges.count)
}

countApplesAndOranges(s: 7, t: 11, a: 5, b: 15, apples: [-2, 2, 1], oranges: [5, -6])
