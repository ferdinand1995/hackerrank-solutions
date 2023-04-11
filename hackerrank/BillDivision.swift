import Foundation

/*
 * Complete the 'bonAppetit' function below.
 *
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY bill
 *  2. INTEGER k
 *  3. INTEGER b
 */

func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {
    var sharedItemList = bill
    // MARK: remove item on specific index
    sharedItemList.remove(at: k)
    let totalSharedMeals = sharedItemList.reduce(0, +)
    let actualCharge = totalSharedMeals/2
    if actualCharge == b {
        print("Bon Appetit")
    } else {
        let overchangedValue = b - actualCharge
        print(overchangedValue)
    }
}

// Overchanged Example
// bonAppetit(bill: [3, 10, 2, 9], k: 1, b: 12)
// Bon Appetit Example
bonAppetit(bill: [9044, 3135, 7604, 4793, 8, 4704, 3565, 8545, 9328, 4186], k: 9, b: 249191240)
